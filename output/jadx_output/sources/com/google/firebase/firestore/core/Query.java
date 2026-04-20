package com.google.firebase.firestore.core;

import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.Pipeline;
import com.google.firebase.firestore.RealtimePipeline;
import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.core.OrderBy;
import com.google.firebase.firestore.model.DatabaseId;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.FieldPath;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.pipeline.BooleanExpression;
import com.google.firebase.firestore.pipeline.CollectionGroupOptions;
import com.google.firebase.firestore.pipeline.CollectionGroupSource;
import com.google.firebase.firestore.pipeline.CollectionSource;
import com.google.firebase.firestore.pipeline.DocumentsSource;
import com.google.firebase.firestore.pipeline.Expression;
import com.google.firebase.firestore.pipeline.Field;
import com.google.firebase.firestore.pipeline.InternalOptions;
import com.google.firebase.firestore.pipeline.LimitStage;
import com.google.firebase.firestore.pipeline.Ordering;
import com.google.firebase.firestore.pipeline.SortStage;
import com.google.firebase.firestore.pipeline.Stage;
import com.google.firebase.firestore.pipeline.WhereStage;
import com.google.firebase.firestore.remote.RemoteSerializer;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.BiFunction;
import com.google.firebase.firestore.util.Function;
import com.google.firebase.firestore.util.IntFunction;
import com.google.firestore.v1.Value;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes22.dex */
public final class Query {
    private static final OrderBy KEY_ORDERING_ASC = OrderBy.getInstance(OrderBy.Direction.ASCENDING, FieldPath.KEY_PATH);
    private static final OrderBy KEY_ORDERING_DESC = OrderBy.getInstance(OrderBy.Direction.DESCENDING, FieldPath.KEY_PATH);
    private final String collectionGroup;
    private final Bound endAt;
    private final List<OrderBy> explicitSortOrder;
    private final List<Filter> filters;
    private final long limit;
    private final LimitType limitType;
    private Target memoizedAggregateTarget;
    private List<OrderBy> memoizedNormalizedOrderBys;
    private Target memoizedTarget;
    private final ResourcePath path;
    private final Bound startAt;

    public enum LimitType {
        LIMIT_TO_FIRST,
        LIMIT_TO_LAST
    }

    public static Query atPath(ResourcePath path) {
        return new Query(path, null);
    }

    public Query(ResourcePath path, String collectionGroup, List<Filter> filters, List<OrderBy> explicitSortOrder, long limit, LimitType limitType, Bound startAt, Bound endAt) {
        this.path = path;
        this.collectionGroup = collectionGroup;
        this.explicitSortOrder = explicitSortOrder;
        this.filters = filters;
        this.limit = limit;
        this.limitType = limitType;
        this.startAt = startAt;
        this.endAt = endAt;
    }

    public Query(ResourcePath path, String collectionGroup) {
        this(path, collectionGroup, Collections.emptyList(), Collections.emptyList(), -1L, LimitType.LIMIT_TO_FIRST, null, null);
    }

    public ResourcePath getPath() {
        return this.path;
    }

    public String getCollectionGroup() {
        return this.collectionGroup;
    }

    public boolean isDocumentQuery() {
        return DocumentKey.isDocumentKey(this.path) && this.collectionGroup == null && this.filters.isEmpty();
    }

    public boolean isCollectionGroupQuery() {
        return this.collectionGroup != null;
    }

    public boolean matchesAllDocuments() {
        if (this.filters.isEmpty() && this.limit == -1 && this.startAt == null && this.endAt == null) {
            return getExplicitOrderBy().isEmpty() || (getExplicitOrderBy().size() == 1 && getExplicitOrderBy().get(0).field.isKeyField());
        }
        return false;
    }

    public List<Filter> getFilters() {
        return this.filters;
    }

    public long getLimit() {
        return this.limit;
    }

    public boolean hasLimit() {
        return this.limit != -1;
    }

    public LimitType getLimitType() {
        return this.limitType;
    }

    public Bound getStartAt() {
        return this.startAt;
    }

    public Bound getEndAt() {
        return this.endAt;
    }

    public SortedSet<FieldPath> getInequalityFilterFields() {
        SortedSet<FieldPath> result = new TreeSet<>();
        for (Filter filter : getFilters()) {
            for (FieldFilter subFilter : filter.getFlattenedFilters()) {
                if (subFilter.isInequality()) {
                    result.add(subFilter.getField());
                }
            }
        }
        return result;
    }

    public Query filter(Filter filter) {
        Assert.hardAssert(!isDocumentQuery(), "No filter is allowed for document query", new Object[0]);
        List<Filter> updatedFilter = new ArrayList<>(this.filters);
        updatedFilter.add(filter);
        return new Query(this.path, this.collectionGroup, updatedFilter, this.explicitSortOrder, this.limit, this.limitType, this.startAt, this.endAt);
    }

    public Query orderBy(OrderBy order) {
        Assert.hardAssert(!isDocumentQuery(), "No ordering is allowed for document query", new Object[0]);
        List<OrderBy> updatedSortOrder = new ArrayList<>(this.explicitSortOrder);
        updatedSortOrder.add(order);
        return new Query(this.path, this.collectionGroup, this.filters, updatedSortOrder, this.limit, this.limitType, this.startAt, this.endAt);
    }

    public Query limitToFirst(long limit) {
        return new Query(this.path, this.collectionGroup, this.filters, this.explicitSortOrder, limit, LimitType.LIMIT_TO_FIRST, this.startAt, this.endAt);
    }

    public Query limitToLast(long limit) {
        return new Query(this.path, this.collectionGroup, this.filters, this.explicitSortOrder, limit, LimitType.LIMIT_TO_LAST, this.startAt, this.endAt);
    }

    public Query startAt(Bound bound) {
        return new Query(this.path, this.collectionGroup, this.filters, this.explicitSortOrder, this.limit, this.limitType, bound, this.endAt);
    }

    public Query endAt(Bound bound) {
        return new Query(this.path, this.collectionGroup, this.filters, this.explicitSortOrder, this.limit, this.limitType, this.startAt, bound);
    }

    public Query asCollectionQueryAtPath(ResourcePath path) {
        return new Query(path, null, this.filters, this.explicitSortOrder, this.limit, this.limitType, this.startAt, this.endAt);
    }

    public List<OrderBy> getExplicitOrderBy() {
        return this.explicitSortOrder;
    }

    public synchronized List<OrderBy> getNormalizedOrderBy() {
        OrderBy.Direction lastDirection;
        if (this.memoizedNormalizedOrderBys == null) {
            List<OrderBy> res = new ArrayList<>();
            HashSet<String> fieldsNormalized = new HashSet<>();
            for (OrderBy explicit : this.explicitSortOrder) {
                res.add(explicit);
                fieldsNormalized.add(explicit.field.canonicalString());
            }
            if (this.explicitSortOrder.size() > 0) {
                lastDirection = this.explicitSortOrder.get(this.explicitSortOrder.size() - 1).getDirection();
            } else {
                lastDirection = OrderBy.Direction.ASCENDING;
            }
            SortedSet<FieldPath> inequalityFields = getInequalityFilterFields();
            for (FieldPath field : inequalityFields) {
                if (!fieldsNormalized.contains(field.canonicalString()) && !field.isKeyField()) {
                    res.add(OrderBy.getInstance(lastDirection, field));
                }
            }
            if (!fieldsNormalized.contains(FieldPath.KEY_PATH.canonicalString())) {
                res.add(lastDirection.equals(OrderBy.Direction.ASCENDING) ? KEY_ORDERING_ASC : KEY_ORDERING_DESC);
            }
            this.memoizedNormalizedOrderBys = Collections.unmodifiableList(res);
        }
        return this.memoizedNormalizedOrderBys;
    }

    private boolean matchesPathAndCollectionGroup(Document doc) {
        ResourcePath docPath = doc.getKey().getPath();
        if (this.collectionGroup != null) {
            return doc.getKey().hasCollectionId(this.collectionGroup) && this.path.isPrefixOf(docPath);
        }
        boolean zIsDocumentKey = DocumentKey.isDocumentKey(this.path);
        ResourcePath resourcePath = this.path;
        if (zIsDocumentKey) {
            return resourcePath.equals(docPath);
        }
        return resourcePath.isPrefixOf(docPath) && this.path.length() == docPath.length() - 1;
    }

    private boolean matchesFilters(Document doc) {
        for (Filter filter : this.filters) {
            if (!filter.matches(doc)) {
                return false;
            }
        }
        return true;
    }

    private boolean matchesOrderBy(Document doc) {
        for (OrderBy order : getNormalizedOrderBy()) {
            if (!order.getField().equals(FieldPath.KEY_PATH) && doc.getField(order.field) == null) {
                return false;
            }
        }
        return true;
    }

    private boolean matchesBounds(Document doc) {
        if (this.startAt == null || this.startAt.sortsBeforeDocument(getNormalizedOrderBy(), doc)) {
            return this.endAt == null || this.endAt.sortsAfterDocument(getNormalizedOrderBy(), doc);
        }
        return false;
    }

    public boolean matches(Document doc) {
        return doc.isFoundDocument() && matchesPathAndCollectionGroup(doc) && matchesOrderBy(doc) && matchesFilters(doc) && matchesBounds(doc);
    }

    public Comparator<Document> comparator() {
        return new QueryComparator(getNormalizedOrderBy());
    }

    private static class QueryComparator implements Comparator<Document> {
        private final List<OrderBy> sortOrder;

        QueryComparator(List<OrderBy> order) {
            boolean hasKeyOrdering = false;
            for (OrderBy orderBy : order) {
                hasKeyOrdering = hasKeyOrdering || orderBy.getField().equals(FieldPath.KEY_PATH);
            }
            if (!hasKeyOrdering) {
                throw new IllegalArgumentException("QueryComparator needs to have a key ordering");
            }
            this.sortOrder = order;
        }

        @Override // java.util.Comparator
        public int compare(Document doc1, Document doc2) {
            for (OrderBy order : this.sortOrder) {
                int comp = order.compare(doc1, doc2);
                if (comp != 0) {
                    return comp;
                }
            }
            return 0;
        }
    }

    public synchronized Target toTarget() {
        if (this.memoizedTarget == null) {
            this.memoizedTarget = toTarget(getNormalizedOrderBy());
        }
        return this.memoizedTarget;
    }

    public synchronized Target toTarget(List<OrderBy> orderBys) {
        Bound newEndAt;
        OrderBy.Direction dir;
        if (this.limitType == LimitType.LIMIT_TO_FIRST) {
            return new Target(getPath(), getCollectionGroup(), getFilters(), orderBys, this.limit, getStartAt(), getEndAt());
        }
        ArrayList<OrderBy> newOrderBy = new ArrayList<>();
        for (OrderBy orderBy : orderBys) {
            if (orderBy.getDirection() == OrderBy.Direction.DESCENDING) {
                dir = OrderBy.Direction.ASCENDING;
            } else {
                dir = OrderBy.Direction.DESCENDING;
            }
            newOrderBy.add(OrderBy.getInstance(dir, orderBy.getField()));
        }
        Bound newStartAt = this.endAt != null ? new Bound(this.endAt.getPosition(), this.endAt.isInclusive()) : null;
        if (this.startAt != null) {
            newEndAt = new Bound(this.startAt.getPosition(), this.startAt.isInclusive());
        } else {
            newEndAt = null;
        }
        return new Target(getPath(), getCollectionGroup(), getFilters(), newOrderBy, this.limit, newStartAt, newEndAt);
    }

    public Pipeline toPipeline(FirebaseFirestore firestore, UserDataReader userDataReader) {
        return new Pipeline(firestore, userDataReader, convertToStages(userDataReader));
    }

    public RealtimePipeline toRealtimePipeline(FirebaseFirestore firestore, UserDataReader userDataReader) {
        return new RealtimePipeline(firestore, new RemoteSerializer(userDataReader.getDatabaseId()), userDataReader, convertToStages(userDataReader), null);
    }

    private List<Stage<?>> convertToStages(UserDataReader userDataReader) {
        Ordering reversed;
        List<Stage<?>> stages = new ArrayList<>();
        stages.add(pipelineSource(userDataReader.getDatabaseId()));
        for (Filter filter : this.filters) {
            stages.add(new WhereStage(filter.toPipelineExpr(), InternalOptions.EMPTY));
        }
        List<OrderBy> normalizedOrderBy = getNormalizedOrderBy();
        List<Field> fields = new ArrayList<>(normalizedOrderBy.size());
        List<Ordering> orderings = new ArrayList<>(normalizedOrderBy.size());
        for (OrderBy order : normalizedOrderBy) {
            Field field = new Field(order.getField());
            fields.add(field);
            if (order.getDirection() == OrderBy.Direction.ASCENDING) {
                orderings.add(field.ascending());
            } else {
                orderings.add(field.descending());
            }
        }
        List<Field> existenceCheckFields = new ArrayList<>();
        Iterator<OrderBy> it = this.explicitSortOrder.iterator();
        while (it.hasNext()) {
            existenceCheckFields.add(new Field(it.next().getField()));
        }
        if (existenceCheckFields.size() == 1) {
            stages.add(new WhereStage(existenceCheckFields.get(0).exists(), InternalOptions.EMPTY));
        } else if (existenceCheckFields.size() > 1) {
            IntFunction intFunction = new IntFunction() { // from class: com.google.firebase.firestore.core.Query$$ExternalSyntheticLambda0
                @Override // com.google.firebase.firestore.util.IntFunction
                public final Object apply(int i) {
                    return Query.lambda$convertToStages$0(i);
                }
            };
            final Expression.Companion companion = Expression.INSTANCE;
            Objects.requireNonNull(companion);
            BooleanExpression[] conditions = (BooleanExpression[]) skipFirstToArray(existenceCheckFields, intFunction, new Function() { // from class: com.google.firebase.firestore.core.Query$$ExternalSyntheticLambda1
                @Override // com.google.firebase.firestore.util.Function
                public final Object apply(Object obj) {
                    return companion.exists((Field) obj);
                }
            });
            stages.add(new WhereStage(Expression.and(existenceCheckFields.get(0).exists(), conditions), InternalOptions.EMPTY));
        }
        if (this.startAt != null) {
            stages.add(new WhereStage(whereConditionsFromCursor(this.startAt, fields, new BiFunction() { // from class: com.google.firebase.firestore.core.Query$$ExternalSyntheticLambda2
                @Override // com.google.firebase.firestore.util.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Expression.greaterThan((Expression) obj, obj2);
                }
            }), InternalOptions.EMPTY));
        }
        if (this.endAt != null) {
            stages.add(new WhereStage(whereConditionsFromCursor(this.endAt, fields, new BiFunction() { // from class: com.google.firebase.firestore.core.Query$$ExternalSyntheticLambda3
                @Override // com.google.firebase.firestore.util.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Expression.lessThan((Expression) obj, obj2);
                }
            }), InternalOptions.EMPTY));
        }
        if (hasLimit()) {
            if (this.limitType == LimitType.LIMIT_TO_FIRST) {
                stages.add(new SortStage((Ordering[]) orderings.toArray(new Ordering[0]), InternalOptions.EMPTY));
                stages.add(new LimitStage((int) this.limit, InternalOptions.EMPTY));
            } else {
                if (this.explicitSortOrder.isEmpty()) {
                    throw new IllegalStateException("limitToLast() queries require specifying at least one orderBy() clause");
                }
                List<Ordering> reversedOrderings = new ArrayList<>();
                for (Ordering ordering : orderings) {
                    if (ordering.getDir() == Ordering.Direction.ASCENDING) {
                        reversed = ordering.getExpr().descending();
                    } else {
                        reversed = ordering.getExpr().ascending();
                    }
                    reversedOrderings.add(reversed);
                }
                stages.add(new SortStage((Ordering[]) reversedOrderings.toArray(new Ordering[0]), InternalOptions.EMPTY));
                stages.add(new LimitStage((int) this.limit, InternalOptions.EMPTY));
                stages.add(new SortStage((Ordering[]) orderings.toArray(new Ordering[0]), InternalOptions.EMPTY));
            }
        } else {
            stages.add(new SortStage((Ordering[]) orderings.toArray(new Ordering[0]), InternalOptions.EMPTY));
        }
        return stages;
    }

    static /* synthetic */ BooleanExpression[] lambda$convertToStages$0(int x$0) {
        return new BooleanExpression[x$0];
    }

    private static <T, R> R[] skipFirstToArray(List<T> list, IntFunction<R[]> generator, Function<T, R> map) {
        int size = list.size();
        R[] result = generator.apply(size - 1);
        for (int i = 1; i < size; i++) {
            result[i - 1] = map.apply(list.get(i));
        }
        return result;
    }

    private static BooleanExpression whereConditionsFromCursor(Bound bound, List<Field> fields, BiFunction<Expression, Object, BooleanExpression> cmp) {
        List<Value> boundPosition = bound.getPosition();
        int size = boundPosition.size();
        Assert.hardAssert(size <= fields.size(), "Bound positions must not exceed order fields.", new Object[0]);
        int last = size - 1;
        BooleanExpression condition = cmp.apply(fields.get(last), boundPosition.get(last));
        if (bound.isInclusive()) {
            condition = Expression.or(condition, Expression.equal(fields.get(last), boundPosition.get(last)));
        }
        for (int i = size - 2; i >= 0; i--) {
            Field field = fields.get(i);
            Value value = boundPosition.get(i);
            condition = Expression.or(cmp.apply(field, value), Expression.and(field.equal(value), condition));
        }
        return condition;
    }

    private Stage<?> pipelineSource(DatabaseId databaseId) {
        if (isDocumentQuery()) {
            return new DocumentsSource(this.path.canonicalString());
        }
        if (isCollectionGroupQuery()) {
            return new CollectionGroupSource(this.collectionGroup, new CollectionGroupOptions());
        }
        return new CollectionSource(this.path, new RemoteSerializer(databaseId), InternalOptions.EMPTY);
    }

    public synchronized Target toAggregateTarget() {
        if (this.memoizedAggregateTarget == null) {
            this.memoizedAggregateTarget = toTarget(this.explicitSortOrder);
        }
        return this.memoizedAggregateTarget;
    }

    public String getCanonicalId() {
        return toTarget().getCanonicalId() + "|lt:" + this.limitType;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Query query = (Query) o;
        if (this.limitType != query.limitType) {
            return false;
        }
        return toTarget().equals(query.toTarget());
    }

    public int hashCode() {
        return (toTarget().hashCode() * 31) + this.limitType.hashCode();
    }

    public String toString() {
        return "Query(target=" + toTarget().toString() + ";limitType=" + this.limitType.toString() + ")";
    }
}

# Chat UI and User Info Fixes Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Fix ChatViewModel to populate other user's info in header and fix ChatScreen to adapt input field to keyboard height.

**Architecture:** 
- `ChatViewModel` will use `ProfileUseCaseGeneral` to fetch user data via Firebase UID, with a fallback chain (Psychologist -> Patient -> Default Name).
- `ChatScreen` will use `Modifier.imePadding()` at the root `Scaffold` level to handle keyboard offsets.

**Tech Stack:** Kotlin, Jetpack Compose, MVVM, Koin, Firebase.

---

### Task 1: ChatViewModel User Info Loading

**Files:**
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel.kt`
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt`

- [ ] **Step 1: Update ChatViewModel constructor to include ProfileUseCaseGeneral**
(Already present in current code, but ensure it's used correctly)

- [ ] **Step 2: Implement loadPsychologistInfo() logic**
Modify `loadPsychologistInfo` to implement the fallback chain:
1. Try `getPsicologoById(otherUserId)`
2. If fails, try `getPacienteByIdFirebase(otherUserId)`
3. If both fail, use `otherUserName` (passed to ViewModel or as fallback)
4. Use `buildString` for full name: `nombre` + `apellido`.
5. Sync `isOnline` from `_psychologistOnline.value`.

- [ ] **Step 3: Ensure loadPsychologistInfo() is called in init**
(Already present in `init`, verify it's called within `viewModelScope.launch`).

- [ ] **Step 4: Update AppModule.kt factory**
Ensure `profileUseCaseGeneral = get()` is passed to `ChatViewModel`.

- [ ] **Step 5: Commit**
```bash
git add app/src/main/java/org/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel.kt app/src/main/java/org/ies/tierno/applicationamani/di/AppModule.kt
git commit -m "fix(chat): load other user info for chat header with fallback chain"
```

### Task 2: ChatScreen Keyboard Adaptation

**Files:**
- Modify: `app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreen.kt`
- Check: `app/src/main/AndroidManifest.xml`

- [ ] **Step 1: Remove fixed bottom padding from Scaffold content**
Find `Box` inside `Scaffold` content and remove any `.padding(bottom = ...)` if present.

- [ ] **Step 2: Add Modifier.imePadding() to Scaffold**
Apply `Modifier.imePadding()` to the root `Scaffold` modifier.

- [ ] **Step 3: Verify AndroidManifest.xml**
Confirm `android:windowSoftInputMode="adjustResize"` is present for `MainActivity`.

- [ ] **Step 4: Commit**
```bash
git add app/src/main/java/org/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreen.kt
git commit -m "fix(chat): adapt input field to keyboard height using imePadding"
```

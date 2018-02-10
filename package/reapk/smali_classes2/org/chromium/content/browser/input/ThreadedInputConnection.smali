.class public Lorg/chromium/content/browser/input/ThreadedInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;


# static fields
.field private static final DEBUG_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "cr_Ime"

.field private static final UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;


# instance fields
.field private final mFinishComposingTextRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private final mMoveCursorSelectionEndRunnable:Ljava/lang/Runnable;

.field private final mNotifyUserActionRunnable:Ljava/lang/Runnable;

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private final mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/chromium/content/browser/input/TextInputState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestTextInputStateUpdate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$1;

    const-string v1, ""

    new-instance v2, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v2, v4, v4}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    new-instance v3, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v3, v5, v5}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/ThreadedInputConnection$1;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    sput-object v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/os/Handler;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 52
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mMoveCursorSelectionEndRunnable:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mRequestTextInputStateUpdate:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$5;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$5;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNotifyUserActionRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mFinishComposingTextRunnable:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 103
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 104
    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 105
    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnection;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->processPendingInputStates()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/TextInputState;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnection;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnection;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method private addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V
    .locals 5
    .param p1, "textInputState"    # Lorg/chromium/content/browser/input/TextInputState;

    .prologue
    .line 214
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 216
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "cr_Ime"

    const-string v2, "addToQueueOnUiThread interrupted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private assertOnImeThread()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Z)V

    .line 232
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private blockAndGetStateUpdate()Lorg/chromium/content/browser/input/TextInputState;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 241
    const/4 v1, 0x0

    .line 245
    .local v1, "shouldUpdateSelection":Z
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content/browser/input/TextInputState;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .local v2, "state":Lorg/chromium/content/browser/input/TextInputState;
    invoke-virtual {v2}, Lorg/chromium/content/browser/input/TextInputState;->shouldUnblock()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 259
    .end local v2    # "state":Lorg/chromium/content/browser/input/TextInputState;
    :cond_0
    :goto_1
    return-object v2

    .line 246
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 250
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Z)V

    move-object v2, v3

    .line 251
    goto :goto_1

    .line 256
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "state":Lorg/chromium/content/browser/input/TextInputState;
    :cond_1
    invoke-virtual {v2}, Lorg/chromium/content/browser/input/TextInputState;->fromIme()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    goto :goto_1

    .line 263
    :cond_2
    const/4 v1, 0x1

    .line 264
    goto :goto_0
.end method

.method private cancelCombiningAccent()V
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    .line 477
    return-void
.end method

.method private handleCombiningAccent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 444
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 445
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    .line 447
    .local v4, "unicodeChar":I
    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v5

    .line 448
    :cond_1
    const/high16 v7, -0x80000000

    and-int/2addr v7, v4

    if-eqz v7, :cond_2

    .line 449
    const v5, 0x7fffffff

    and-int v3, v4, v5

    .line 450
    .local v3, "pendingAccent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v6, v6}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z

    .line 453
    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->setCombiningAccent(I)V

    move v5, v6

    .line 454
    goto :goto_0

    .line 455
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "pendingAccent":I
    :cond_2
    iget v7, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 456
    iget v7, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    invoke-static {v7, v4}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    .line 457
    .local v2, "combined":I
    if-eqz v2, :cond_3

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move v5, v6

    .line 461
    goto :goto_0

    .line 465
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method private notifyUserAction()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNotifyUserActionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method private processPendingInputStates()V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 182
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/TextInputState;

    .line 183
    .local v0, "state":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v0, :cond_1

    .line 185
    return-void

    .line 188
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->shouldUnblock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    goto :goto_0
.end method

.method private requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mRequestTextInputStateUpdate:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->blockAndGetStateUpdate()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    return-object v0
.end method

.method private updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V
    .locals 7
    .param p1, "textInputState"    # Lorg/chromium/content/browser/input/TextInputState;

    .prologue
    .line 198
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 200
    iget v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v2, :cond_0

    .line 201
    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v1

    .line 202
    .local v1, "selection":Lorg/chromium/content/browser/input/Range;
    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->composition()Lorg/chromium/content/browser/input/Range;

    move-result-object v0

    .line 203
    .local v0, "composition":Lorg/chromium/content/browser/input/Range;
    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v3

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v4

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v5

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/chromium/content/browser/input/ImeAdapter;->updateSelection(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 375
    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1
    .param p1, "states"    # I

    .prologue
    .line 600
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public closeConnection()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 577
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 590
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 306
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 307
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccent()V

    .line 308
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$9;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->notifyUserAction()V

    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 400
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 401
    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->finishComposingText()Z

    .line 404
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 384
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 385
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    .line 388
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_2

    .line 389
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    .line 391
    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccent()V

    .line 488
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mFinishComposingTextRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 1
    .param p1, "reqModes"    # I

    .prologue
    .line 566
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 356
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 357
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v1

    .line 358
    .local v1, "textInputState":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    .line 359
    :cond_0
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 360
    .local v0, "extractedText":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 361
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 362
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 363
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 364
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->singleLine()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getQueueForTest()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/chromium/content/browser/input/TextInputState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 554
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 555
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 556
    .local v0, "textInputState":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 557
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "maxChars"    # I
    .param p2, "flags"    # I

    .prologue
    .line 542
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 543
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 544
    .local v0, "textInputState":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 545
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/TextInputState;->getTextAfterSelection(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "maxChars"    # I
    .param p2, "flags"    # I

    .prologue
    .line 530
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 531
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 532
    .local v0, "textInputState":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 533
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/TextInputState;->getTextBeforeSelection(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public moveCursorToSelectionEndOnUiThread()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mMoveCursorSelectionEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public onRestartInputOnUiThread()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 340
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 341
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 324
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 325
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$10;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$10;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 622
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    .prologue
    .line 632
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 633
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 639
    const/4 v0, 0x1

    return v0
.end method

.method resetOnUiThread()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 110
    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    .line 111
    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    .line 112
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 427
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 429
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->handleCombiningAccent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return v1

    .line 431
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 437
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->notifyUserAction()V

    goto :goto_0
.end method

.method public sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 150
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 151
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public setCombiningAccent(I)V
    .locals 0
    .param p1, "pendingAccent"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 472
    iput p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    .line 473
    return-void
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 514
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 515
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$15;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$15;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 498
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 499
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$14;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$14;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public unblockOnUiThread()V
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 173
    sget-object v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V

    .line 174
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public updateComposingText(Ljava/lang/CharSequence;IZ)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "isPendingAccent"    # Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 286
    if-eqz p3, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    const/high16 v2, -0x80000000

    or-int v0, v1, v2

    .line 288
    .local v0, "accentToSend":I
    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 289
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccent()V

    .line 290
    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;II)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->notifyUserAction()V

    .line 297
    const/4 v1, 0x1

    return v1

    .line 286
    .end local v0    # "accentToSend":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateStateOnUiThread(Ljava/lang/String;IIIIZZ)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "compositionStart"    # I
    .param p5, "compositionEnd"    # I
    .param p6, "singleLine"    # Z
    .param p7, "isNonImeChange"    # Z

    .prologue
    .line 118
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 120
    new-instance v0, Lorg/chromium/content/browser/input/TextInputState;

    new-instance v2, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v2, p2, p3}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    new-instance v3, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v3, p4, p5}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    if-nez p7, :cond_1

    const/4 v5, 0x1

    :goto_0
    move-object v1, p1

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/TextInputState;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    .line 125
    .local v0, "newState":Lorg/chromium/content/browser/input/TextInputState;
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V

    .line 126
    if-eqz p7, :cond_0

    .line 127
    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_0
    return-void

    .line 120
    .end local v0    # "newState":Lorg/chromium/content/browser/input/TextInputState;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

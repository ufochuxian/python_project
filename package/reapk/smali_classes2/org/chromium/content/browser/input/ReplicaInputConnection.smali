.class public Lorg/chromium/content/browser/input/ReplicaInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;,
        Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;
    }
.end annotation


# static fields
.field private static final DEBUG_LOGS:Z = false

.field public static final INVALID_COMPOSITION:I = -0x1

.field public static final INVALID_SELECTION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "cr_Ime"


# instance fields
.field private final mEditable:Landroid/text/Editable;

.field private final mHandler:Landroid/os/Handler;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private mSingleLine:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/os/Handler;Landroid/text/Editable;IILandroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "editable"    # Landroid/text/Editable;
    .param p5, "inputType"    # I
    .param p6, "inputFlags"    # I
    .param p7, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 50
    const/4 v2, 0x0

    iput v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 102
    iput-object p2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 103
    iput-object p4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    .line 104
    iput-object p3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-static {p4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 107
    .local v1, "initialSelStart":I
    invoke-static {p4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 108
    .local v0, "initialSelEnd":I
    invoke-static {p5, p6, v1, v0, p7}, Lorg/chromium/content/browser/input/ImeUtils;->computeEditorInfo(IIIILandroid/view/inputmethod/EditorInfo;)V

    .line 114
    return-void
.end method

.method private deleteSurroundingTextImpl(IIZ)Z
    .locals 6
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "fromPhysicalKey"    # Z

    .prologue
    .line 298
    iget v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    if-eqz v4, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->finishComposingText()Z

    .line 302
    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 303
    .local v3, "selectionStart":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 304
    .local v2, "selectionEnd":I
    move v1, v3

    .line 305
    .local v1, "availableBefore":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int v0, v4, v2

    .line 306
    .local v0, "availableAfter":I
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 307
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 311
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    sub-int v5, v3, p1

    invoke-static {v4, v5}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    add-int/lit8 p1, p1, 0x1

    .line 314
    :cond_1
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    add-int v5, v2, p2

    invoke-static {v4, v5}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    add-int/lit8 p2, p2, 0x1

    .line 318
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 319
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 323
    if-eqz p3, :cond_3

    .line 324
    const/4 v4, 0x1

    .line 327
    :goto_0
    return v4

    :cond_3
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v4, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    move-result v4

    goto :goto_0
.end method

.method static isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 287
    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replaceSelectionWithUnicodeChar(I)V
    .locals 5
    .param p1, "unicodeChar"    # I

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 405
    .local v1, "selectionStart":I
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 406
    .local v0, "selectionEnd":I
    if-le v1, v0, :cond_1

    .line 407
    move v2, v1

    .line 408
    .local v2, "temp":I
    move v1, v0

    .line 409
    move v0, v2

    .line 411
    .end local v2    # "temp":I
    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v0, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 412
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    goto :goto_0
.end method

.method private updateComposingText(Ljava/lang/CharSequence;IZ)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "isPendingAccent"    # Z

    .prologue
    const/4 v1, 0x0

    .line 196
    if-eqz p3, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 197
    .local v0, "accentToSend":I
    :goto_0
    iput v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 198
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 199
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 200
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2, p1, p2, v1, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    move-result v1

    return v1

    .end local v0    # "accentToSend":I
    :cond_0
    move v0, v1

    .line 196
    goto :goto_0
.end method

.method private updateSelectionIfRequired()V
    .locals 5

    .prologue
    .line 168
    iget v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-eqz v4, :cond_0

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 170
    .local v3, "selectionStart":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 171
    .local v2, "selectionEnd":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 172
    .local v1, "compositionStart":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 179
    .local v0, "compositionEnd":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v4, v3, v2, v1, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->updateSelection(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 209
    iput v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 210
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 211
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 212
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 264
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 267
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 268
    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 421
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 423
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 431
    :goto_0
    return v2

    .line 427
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 428
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 429
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->finishComposingText()Z

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 240
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 241
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 242
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 243
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 244
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 245
    iget-boolean v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mSingleLine:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 246
    return-object v0

    .line 245
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getImeStateForTesting()Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;
    .locals 6
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "text":Ljava/lang/String;
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 523
    .local v2, "selectionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 524
    .local v3, "selectionEnd":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 525
    .local v4, "compositionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 526
    .local v5, "compositionEnd":I
    new-instance v0, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public moveCursorToSelectionEndOnUiThread()V
    .locals 2

    .prologue
    .line 480
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 481
    .local v0, "selectionEnd":I
    invoke-virtual {p0, v0, v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->setSelection(II)Z

    .line 482
    return-void
.end method

.method public onRestartInputOnUiThread()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 473
    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 474
    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 475
    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->performEditorAction(I)Z

    move-result v0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->onRequestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 348
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 349
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 350
    .local v3, "keycode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    .line 355
    .local v5, "unicodeChar":I
    if-eqz v0, :cond_0

    .line 356
    iget-object v6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v6, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 394
    :goto_0
    return v7

    .line 364
    :cond_0
    const/16 v6, 0x43

    if-ne v3, v6, :cond_2

    .line 365
    invoke-direct {p0, v7, v8, v7}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    .line 392
    :cond_1
    :goto_1
    invoke-direct {p0, v5}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->replaceSelectionWithUnicodeChar(I)V

    .line 393
    iget-object v6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v6, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 366
    :cond_2
    const/16 v6, 0x70

    if-ne v3, v6, :cond_3

    .line 367
    invoke-direct {p0, v8, v7, v7}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    goto :goto_1

    .line 368
    :cond_3
    const/16 v6, 0x42

    if-ne v3, v6, :cond_4

    .line 371
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->finishComposingText()Z

    goto :goto_1

    .line 372
    :cond_4
    const/high16 v6, -0x80000000

    and-int/2addr v6, v5

    if-eqz v6, :cond_5

    .line 374
    const v6, 0x7fffffff

    and-int v4, v5, v6

    .line 375
    .local v4, "pendingAccent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v7, v7}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z

    .line 378
    iput v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    goto :goto_0

    .line 380
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "pendingAccent":I
    :cond_5
    iget v6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 381
    iget v6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    invoke-static {v6, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    .line 382
    .local v2, "combined":I
    if-eqz v2, :cond_6

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 390
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->finishComposingText()Z

    goto :goto_1
.end method

.method public sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 453
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    .line 454
    .local v2, "textLength":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 455
    .local v0, "a":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 456
    .local v1, "b":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 457
    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 458
    :cond_1
    if-le v0, v2, :cond_2

    move v0, v2

    .line 459
    :cond_2
    if-le v1, v2, :cond_3

    move v1, v2

    .line 461
    :cond_3
    if-ne v0, v1, :cond_4

    .line 462
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 466
    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 467
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v3, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setComposingRegion(II)Z

    move-result v3

    return v3

    .line 464
    :cond_4
    invoke-super {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 440
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 441
    .local v0, "textLength":I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 444
    :goto_0
    return v1

    .line 442
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    .line 443
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 444
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->setEditableSelectionOffsets(II)Z

    move-result v1

    goto :goto_0
.end method

.method public unblockOnUiThread()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public updateStateOnUiThread(Ljava/lang/String;IIIIZZ)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "compositionStart"    # I
    .param p5, "compositionEnd"    # I
    .param p6, "singleLine"    # Z
    .param p7, "isNonImeChange"    # Z

    .prologue
    .line 123
    iput-boolean p6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mSingleLine:Z

    .line 127
    if-nez p7, :cond_0

    .line 152
    :goto_0
    return-void

    .line 130
    :cond_0
    const/16 v2, 0xa0

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 137
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "prevText":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 140
    .local v1, "textUnchanged":Z
    if-nez v1, :cond_1

    .line 141
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 144
    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2, p2, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 146
    if-ne p4, p5, :cond_2

    .line 147
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 151
    :goto_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    goto :goto_0

    .line 149
    :cond_2
    invoke-super {p0, p4, p5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_1
.end method

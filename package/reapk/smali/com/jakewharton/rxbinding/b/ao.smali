.class public abstract Lcom/jakewharton/rxbinding/b/ao;
.super Lcom/jakewharton/rxbinding/view/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/k",
        "<",
        "Landroid/widget/SeekBar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/SeekBar;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/k;-><init>(Landroid/view/View;)V

    .line 10
    return-void
.end method

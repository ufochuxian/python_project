.class public abstract Lcom/jakewharton/rxbinding/b/m;
.super Lcom/jakewharton/rxbinding/view/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/k",
        "<",
        "Landroid/widget/AdapterView",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/k;-><init>(Landroid/view/View;)V

    .line 10
    return-void
.end method

.class public abstract Lcom/jakewharton/rxbinding/view/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/jakewharton/rxbinding/view/k;, "Lcom/jakewharton/rxbinding/view/k<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/k;->a:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/jakewharton/rxbinding/view/k;, "Lcom/jakewharton/rxbinding/view/k<TT;>;"
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/k;->a:Landroid/view/View;

    return-object v0
.end method

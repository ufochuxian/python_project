.class public final Lcom/jakewharton/rxbinding/view/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/view/ViewGroup;)Lrx/e;
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/view/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const-string v0, "viewGroup == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding/view/n;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/n;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

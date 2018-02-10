.class public final Lcom/jakewharton/rxbinding/b/af;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/widget/RatingBar;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/RatingBar;
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
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/b/v;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/v;-><init>(Landroid/widget/RatingBar;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/widget/RatingBar;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/RatingBar;
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
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/jakewharton/rxbinding/b/u;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/u;-><init>(Landroid/widget/RatingBar;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/widget/RatingBar;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/RatingBar;
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
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/jakewharton/rxbinding/b/af$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/af$1;-><init>(Landroid/widget/RatingBar;)V

    return-object v0
.end method

.method public static d(Landroid/widget/RatingBar;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/RatingBar;
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
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/jakewharton/rxbinding/b/af$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/af$2;-><init>(Landroid/widget/RatingBar;)V

    return-object v0
.end method

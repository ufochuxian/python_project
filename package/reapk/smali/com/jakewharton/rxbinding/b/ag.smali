.class public final Lcom/jakewharton/rxbinding/b/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/widget/SearchView;Z)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "submit"    # Z
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SearchView;",
            "Z)",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/jakewharton/rxbinding/b/ag$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/ag$1;-><init>(Landroid/widget/SearchView;Z)V

    return-object v0
.end method

.method public static a(Landroid/widget/SearchView;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
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
            "Landroid/widget/SearchView;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/an;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/jakewharton/rxbinding/b/al;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/al;-><init>(Landroid/widget/SearchView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/widget/SearchView;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
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
            "Landroid/widget/SearchView;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/jakewharton/rxbinding/b/am;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/am;-><init>(Landroid/widget/SearchView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

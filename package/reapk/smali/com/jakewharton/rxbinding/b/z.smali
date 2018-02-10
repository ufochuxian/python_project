.class public final Lcom/jakewharton/rxbinding/b/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/widget/AutoCompleteTextView;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
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
            "Landroid/widget/AutoCompleteTextView;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/jakewharton/rxbinding/b/o;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/o;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/widget/AutoCompleteTextView;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
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
            "Landroid/widget/AutoCompleteTextView;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/jakewharton/rxbinding/b/z$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/z$1;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-object v0
.end method

.method public static c(Landroid/widget/AutoCompleteTextView;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
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
            "Landroid/widget/AutoCompleteTextView;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/jakewharton/rxbinding/b/z$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/z$2;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-object v0
.end method

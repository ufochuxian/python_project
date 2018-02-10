.class public final Lcom/jakewharton/rxbinding/b/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/widget/TextSwitcher;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextSwitcher;
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
            "Landroid/widget/TextSwitcher;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding/b/ai$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/ai$1;-><init>(Landroid/widget/TextSwitcher;)V

    return-object v0
.end method

.method public static b(Landroid/widget/TextSwitcher;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextSwitcher;
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
            "Landroid/widget/TextSwitcher;",
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
    new-instance v0, Lcom/jakewharton/rxbinding/b/ai$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/ai$2;-><init>(Landroid/widget/TextSwitcher;)V

    return-object v0
.end method

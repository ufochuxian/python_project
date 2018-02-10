.class public final Lcom/jakewharton/rxbinding/b/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/widget/AdapterView;)Lrx/e;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/jakewharton/rxbinding/b/k;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/k;-><init>(Landroid/widget/AdapterView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/AdapterView;Lrx/c/o;)Lrx/e;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1    # Lrx/c/o;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;",
            "Lrx/c/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "handled":Lrx/c/o;, "Lrx/c/o<Ljava/lang/Boolean;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/jakewharton/rxbinding/b/i;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/i;-><init>(Landroid/widget/AdapterView;Lrx/c/o;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/AdapterView;Lrx/c/p;)Lrx/e;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1    # Lrx/c/p;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;",
            "Lrx/c/p",
            "<-",
            "Lcom/jakewharton/rxbinding/b/g;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "handled":Lrx/c/p;, "Lrx/c/p<-Lcom/jakewharton/rxbinding/b/g;Ljava/lang/Boolean;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    new-instance v0, Lcom/jakewharton/rxbinding/b/h;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/h;-><init>(Landroid/widget/AdapterView;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/widget/AdapterView;)Lrx/e;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/jakewharton/rxbinding/b/n;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/n;-><init>(Landroid/widget/AdapterView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/widget/AdapterView;)Lrx/e;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/jakewharton/rxbinding/b/f;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/f;-><init>(Landroid/widget/AdapterView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/widget/AdapterView;)Lrx/e;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/jakewharton/rxbinding/b/e;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/e;-><init>(Landroid/widget/AdapterView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/widget/AdapterView;)Lrx/e;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/jakewharton/rxbinding/a/a;->a:Lrx/c/o;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/b/y;->a(Landroid/widget/AdapterView;Lrx/c/o;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/widget/AdapterView;)Lrx/e;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/jakewharton/rxbinding/a/a;->b:Lrx/c/p;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/b/y;->a(Landroid/widget/AdapterView;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/widget/AdapterView;)Lrx/c/c;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    new-instance v0, Lcom/jakewharton/rxbinding/b/y$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/y$1;-><init>(Landroid/widget/AdapterView;)V

    return-object v0
.end method

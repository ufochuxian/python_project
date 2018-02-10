.class public final Lcom/jakewharton/rxbinding/b/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/widget/TextView;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/jakewharton/rxbinding/a/a;->b:Lrx/c/p;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/b/aj;->a(Landroid/widget/TextView;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/TextView;Lrx/c/p;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "(",
            "Landroid/widget/TextView;",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "handled":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/jakewharton/rxbinding/b/ba;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/ba;-><init>(Landroid/widget/TextView;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/widget/TextView;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/ay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/jakewharton/rxbinding/a/a;->b:Lrx/c/p;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/b/aj;->b(Landroid/widget/TextView;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/widget/TextView;Lrx/c/p;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "(",
            "Landroid/widget/TextView;",
            "Lrx/c/p",
            "<-",
            "Lcom/jakewharton/rxbinding/b/ay;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/ay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "handled":Lrx/c/p;, "Lrx/c/p<-Lcom/jakewharton/rxbinding/b/ay;Ljava/lang/Boolean;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/jakewharton/rxbinding/b/az;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/az;-><init>(Landroid/widget/TextView;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/widget/TextView;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/jakewharton/rxbinding/b/bd;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/bd;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/widget/TextView;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/bb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/jakewharton/rxbinding/b/bc;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/bc;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/widget/TextView;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/aw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    new-instance v0, Lcom/jakewharton/rxbinding/b/ax;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/ax;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/widget/TextView;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/b/au;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/jakewharton/rxbinding/b/av;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/av;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/widget/TextView;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/jakewharton/rxbinding/b/aj$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/aj$1;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static h(Landroid/widget/TextView;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    new-instance v0, Lcom/jakewharton/rxbinding/b/aj$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/aj$2;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static i(Landroid/widget/TextView;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    new-instance v0, Lcom/jakewharton/rxbinding/b/aj$3;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/aj$3;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static j(Landroid/widget/TextView;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    new-instance v0, Lcom/jakewharton/rxbinding/b/aj$4;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/aj$4;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static k(Landroid/widget/TextView;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    new-instance v0, Lcom/jakewharton/rxbinding/b/aj$5;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/aj$5;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static l(Landroid/widget/TextView;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    new-instance v0, Lcom/jakewharton/rxbinding/b/aj$6;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/aj$6;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static m(Landroid/widget/TextView;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    new-instance v0, Lcom/jakewharton/rxbinding/b/aj$7;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/b/aj$7;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

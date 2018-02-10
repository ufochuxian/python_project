.class public final Lcom/jakewharton/rxbinding/view/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/view/MenuItem;)Lrx/e;
    .locals 2
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/jakewharton/rxbinding/view/b;

    sget-object v1, Lcom/jakewharton/rxbinding/a/a;->b:Lrx/c/p;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/b;-><init>(Landroid/view/MenuItem;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/MenuItem;Lrx/c/p;)Lrx/e;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            "Lrx/c/p",
            "<-",
            "Landroid/view/MenuItem;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "handled":Lrx/c/p;, "Lrx/c/p<-Landroid/view/MenuItem;Ljava/lang/Boolean;>;"
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/jakewharton/rxbinding/view/b;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/b;-><init>(Landroid/view/MenuItem;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/MenuItem;)Lrx/e;
    .locals 2
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/jakewharton/rxbinding/view/a;

    sget-object v1, Lcom/jakewharton/rxbinding/a/a;->b:Lrx/c/p;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/a;-><init>(Landroid/view/MenuItem;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/MenuItem;Lrx/c/p;)Lrx/e;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            "Lrx/c/p",
            "<-",
            "Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "handled":Lrx/c/p;, "Lrx/c/p<-Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;Ljava/lang/Boolean;>;"
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/jakewharton/rxbinding/view/a;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/a;-><init>(Landroid/view/MenuItem;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/view/MenuItem;)Lrx/c/c;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/jakewharton/rxbinding/view/d$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/d$1;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static d(Landroid/view/MenuItem;)Lrx/c/c;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/jakewharton/rxbinding/view/d$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/d$2;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static e(Landroid/view/MenuItem;)Lrx/c/c;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/c/c",
            "<-",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/jakewharton/rxbinding/view/d$3;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/d$3;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static f(Landroid/view/MenuItem;)Lrx/c/c;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    new-instance v0, Lcom/jakewharton/rxbinding/view/d$4;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/d$4;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static g(Landroid/view/MenuItem;)Lrx/c/c;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/jakewharton/rxbinding/view/d$5;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/d$5;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static h(Landroid/view/MenuItem;)Lrx/c/c;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    new-instance v0, Lcom/jakewharton/rxbinding/view/d$6;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/d$6;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static i(Landroid/view/MenuItem;)Lrx/c/c;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    new-instance v0, Lcom/jakewharton/rxbinding/view/d$7;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/d$7;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.class abstract Landroid/support/v7/view/menu/c;
.super Landroid/support/v7/view/menu/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/view/menu/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/f/a/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/f/a/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/c<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/d;-><init>(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Landroid/support/v7/view/menu/c;->a:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 42
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/c<TT;>;"
    instance-of v2, p1, Landroid/support/v4/f/a/b;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 43
    check-cast v0, Landroid/support/v4/f/a/b;

    .line 46
    .local v0, "supportMenuItem":Landroid/support/v4/f/a/b;
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Landroid/support/v4/k/a;

    invoke-direct {v2}, Landroid/support/v4/k/a;-><init>()V

    iput-object v2, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    .line 51
    :cond_0
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 53
    .local v1, "wrappedItem":Landroid/view/MenuItem;
    if-nez v1, :cond_1

    .line 55
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/support/v7/view/menu/q;->a(Landroid/content/Context;Landroid/support/v4/f/a/b;)Landroid/view/MenuItem;

    move-result-object v1

    .line 56
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v0    # "supportMenuItem":Landroid/support/v4/f/a/b;
    .end local v1    # "wrappedItem":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 65
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/c<TT;>;"
    instance-of v2, p1, Landroid/support/v4/f/a/c;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 66
    check-cast v0, Landroid/support/v4/f/a/c;

    .line 69
    .local v0, "supportSubMenu":Landroid/support/v4/f/a/c;
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Landroid/support/v4/k/a;

    invoke-direct {v2}, Landroid/support/v4/k/a;-><init>()V

    iput-object v2, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    .line 73
    :cond_0
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SubMenu;

    .line 75
    .local v1, "wrappedMenu":Landroid/view/SubMenu;
    if-nez v1, :cond_1

    .line 76
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/support/v7/view/menu/q;->a(Landroid/content/Context;Landroid/support/v4/f/a/c;)Landroid/view/SubMenu;

    move-result-object v1

    .line 77
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v0    # "supportSubMenu":Landroid/support/v4/f/a/c;
    .end local v1    # "wrappedMenu":Landroid/view/SubMenu;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/c<TT;>;"
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 92
    :cond_1
    return-void
.end method

.method final a(I)V
    .locals 3
    .param p1, "groupId"    # I

    .prologue
    .line 95
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/c<TT;>;"
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 108
    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/f/a/b;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 104
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method final b(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 111
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/c<TT;>;"
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/f/a/b;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 120
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.class public Landroid/support/v7/view/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/b$a;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/ActionMode$Callback;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/f;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/support/v4/k/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/o",
            "<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroid/support/v7/view/f$a;->b:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Landroid/support/v7/view/f$a;->a:Landroid/view/ActionMode$Callback;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/f$a;->c:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Landroid/support/v4/k/o;

    invoke-direct {v0}, Landroid/support/v4/k/o;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/f$a;->d:Landroid/support/v4/k/o;

    .line 156
    return-void
.end method

.method private a(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 183
    iget-object v1, p0, Landroid/support/v7/view/f$a;->d:Landroid/support/v4/k/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/k/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    .line 184
    .local v0, "wrapper":Landroid/view/Menu;
    if-nez v0, :cond_0

    .line 185
    iget-object v2, p0, Landroid/support/v7/view/f$a;->b:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/f/a/a;

    invoke-static {v2, v1}, Landroid/support/v7/view/menu/q;->a(Landroid/content/Context;Landroid/support/v4/f/a/a;)Landroid/view/Menu;

    move-result-object v0

    .line 186
    iget-object v1, p0, Landroid/support/v7/view/f$a;->d:Landroid/support/v4/k/o;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/k/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/view/b;)V
    .locals 2
    .param p1, "mode"    # Landroid/support/v7/view/b;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/view/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/f$a;->b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 180
    return-void
.end method

.method public a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/support/v7/view/b;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v7/view/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/f$a;->b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;

    move-result-object v1

    .line 161
    invoke-direct {p0, p2}, Landroid/support/v7/view/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    .line 160
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/support/v7/view/b;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/view/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/f$a;->b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/f$a;->b:Landroid/content/Context;

    check-cast p2, Landroid/support/v4/f/a/b;

    .line 174
    .end local p2    # "item":Landroid/view/MenuItem;
    invoke-static {v2, p2}, Landroid/support/v7/view/menu/q;->a(Landroid/content/Context;Landroid/support/v4/f/a/b;)Landroid/view/MenuItem;

    move-result-object v2

    .line 173
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "mode"    # Landroid/support/v7/view/b;

    .prologue
    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Landroid/support/v7/view/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 194
    iget-object v3, p0, Landroid/support/v7/view/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/f;

    .line 195
    .local v2, "wrapper":Landroid/support/v7/view/f;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/support/v7/view/f;->b:Landroid/support/v7/view/b;

    if-ne v3, p1, :cond_0

    .line 205
    :goto_1
    return-object v2

    .line 193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "wrapper":Landroid/support/v7/view/f;
    :cond_1
    new-instance v2, Landroid/support/v7/view/f;

    iget-object v3, p0, Landroid/support/v7/view/f$a;->b:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/support/v7/view/f;-><init>(Landroid/content/Context;Landroid/support/v7/view/b;)V

    .line 204
    .restart local v2    # "wrapper":Landroid/support/v7/view/f;
    iget-object v3, p0, Landroid/support/v7/view/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/support/v7/view/b;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/view/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/f$a;->b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;

    move-result-object v1

    .line 167
    invoke-direct {p0, p2}, Landroid/support/v7/view/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    .line 166
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

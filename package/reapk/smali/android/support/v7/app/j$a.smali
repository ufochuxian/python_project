.class Landroid/support/v7/app/j$a;
.super Landroid/support/v7/app/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Landroid/support/v7/app/j;


# direct methods
.method constructor <init>(Landroid/support/v7/app/j;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/j;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 266
    iput-object p1, p0, Landroid/support/v7/app/j$a;->c:Landroid/support/v7/app/j;

    .line 267
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/g$b;-><init>(Landroid/support/v7/app/g;Landroid/view/Window$Callback;)V

    .line 268
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 286
    new-instance v0, Landroid/support/v7/view/f$a;

    iget-object v2, p0, Landroid/support/v7/app/j$a;->c:Landroid/support/v7/app/j;

    iget-object v2, v2, Landroid/support/v7/app/j;->l:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v7/view/f$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 290
    .local v0, "callbackWrapper":Landroid/support/v7/view/f$a;
    iget-object v2, p0, Landroid/support/v7/app/j$a;->c:Landroid/support/v7/app/j;

    .line 291
    invoke-virtual {v2, v0}, Landroid/support/v7/app/j;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v1

    .line 293
    .local v1, "supportActionMode":Landroid/support/v7/view/b;
    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v0, v1}, Landroid/support/v7/view/f$a;->b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;

    move-result-object v2

    .line 297
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/app/j$a;->c:Landroid/support/v7/app/j;

    invoke-virtual {v0}, Landroid/support/v7/app/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Landroid/support/v7/app/j$a;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/g$b;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
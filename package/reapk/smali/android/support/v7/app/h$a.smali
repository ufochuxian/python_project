.class Landroid/support/v7/app/h$a;
.super Landroid/support/v7/app/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/app/h;


# direct methods
.method constructor <init>(Landroid/support/v7/app/h;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/h;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/support/v7/app/h$a;->b:Landroid/support/v7/app/h;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/k$a;-><init>(Landroid/support/v7/app/k;Landroid/view/Window$Callback;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 4
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v1, p0, Landroid/support/v7/app/h$a;->b:Landroid/support/v7/app/h;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/h;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$c;

    move-result-object v0

    .line 50
    .local v0, "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$c;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    invoke-super {p0, p1, v1, p3}, Landroid/support/v7/app/k$a;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/k$a;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0
.end method

.class Landroid/support/v4/view/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/u$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;Landroid/support/v4/view/u$e;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "listener"    # Landroid/support/v4/view/u$e;

    .prologue
    .line 197
    return-object p1
.end method

.method public a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-static {p1, p2}, Landroid/support/v4/view/v;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 177
    invoke-static {p1}, Landroid/support/v4/view/v;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/MenuItem;I)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "actionEnum"    # I

    .prologue
    .line 162
    invoke-static {p1, p2}, Landroid/support/v4/view/v;->a(Landroid/view/MenuItem;I)V

    .line 163
    return-void
.end method

.method public b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "resId"    # I

    .prologue
    .line 172
    invoke-static {p1, p2}, Landroid/support/v4/view/v;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

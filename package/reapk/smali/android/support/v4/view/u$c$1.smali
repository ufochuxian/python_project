.class Landroid/support/v4/view/u$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/u$c;->a(Landroid/view/MenuItem;Landroid/support/v4/view/u$e;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/u$e;

.field final synthetic b:Landroid/support/v4/view/u$c;


# direct methods
.method constructor <init>(Landroid/support/v4/view/u$c;Landroid/support/v4/view/u$e;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/u$c;

    .prologue
    .line 229
    iput-object p1, p0, Landroid/support/v4/view/u$c$1;->b:Landroid/support/v4/view/u$c;

    iput-object p2, p0, Landroid/support/v4/view/u$c$1;->a:Landroid/support/v4/view/u$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v4/view/u$c$1;->a:Landroid/support/v4/view/u$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/u$e;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/v4/view/u$c$1;->a:Landroid/support/v4/view/u$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/u$e;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

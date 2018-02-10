.class Landroid/support/v7/widget/ak$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ak;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ak;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/c;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "host"    # Landroid/support/v7/widget/c;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/ak$a;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/ak$a;

    iget-object v1, p0, Landroid/support/v7/widget/ak$b;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0, v1, p2}, Landroid/support/v7/widget/ak$a;->a(Landroid/support/v7/widget/ak;Landroid/content/Intent;)Z

    .line 405
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

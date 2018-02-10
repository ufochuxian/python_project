.class Landroid/support/v4/media/a$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/a$b;


# direct methods
.method constructor <init>(Landroid/support/v4/media/a$b;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    iget-object v0, v0, Landroid/support/v4/media/a$b;->b:Landroid/support/v4/media/a$b$a;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    iget-object v0, v0, Landroid/support/v4/media/a$b;->b:Landroid/support/v4/media/a$b$a;

    invoke-interface {v0}, Landroid/support/v4/media/a$b$a;->a()V

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    invoke-virtual {v0}, Landroid/support/v4/media/a$b;->a()V

    .line 575
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    iget-object v0, v0, Landroid/support/v4/media/a$b;->b:Landroid/support/v4/media/a$b$a;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    iget-object v0, v0, Landroid/support/v4/media/a$b;->b:Landroid/support/v4/media/a$b$a;

    invoke-interface {v0}, Landroid/support/v4/media/a$b$a;->b()V

    .line 582
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    invoke-virtual {v0}, Landroid/support/v4/media/a$b;->b()V

    .line 583
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    iget-object v0, v0, Landroid/support/v4/media/a$b;->b:Landroid/support/v4/media/a$b$a;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    iget-object v0, v0, Landroid/support/v4/media/a$b;->b:Landroid/support/v4/media/a$b$a;

    invoke-interface {v0}, Landroid/support/v4/media/a$b$a;->c()V

    .line 590
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$b$b;->a:Landroid/support/v4/media/a$b;

    invoke-virtual {v0}, Landroid/support/v4/media/a$b;->c()V

    .line 591
    return-void
.end method

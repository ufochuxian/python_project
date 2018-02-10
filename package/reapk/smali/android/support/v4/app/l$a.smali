.class Landroid/support/v4/app/l$a;
.super Landroid/support/v4/app/l;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final c:Landroid/support/v4/app/m;


# direct methods
.method constructor <init>(Landroid/support/v4/app/m;)V
    .locals 0
    .param p1, "impl"    # Landroid/support/v4/app/m;

    .prologue
    .line 339
    invoke-direct {p0}, Landroid/support/v4/app/l;-><init>()V

    .line 340
    iput-object p1, p0, Landroid/support/v4/app/l$a;->c:Landroid/support/v4/app/m;

    .line 341
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/l;)V
    .locals 3
    .param p1, "otherOptions"    # Landroid/support/v4/app/l;

    .prologue
    .line 350
    instance-of v1, p1, Landroid/support/v4/app/l$a;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 352
    check-cast v0, Landroid/support/v4/app/l$a;

    .line 353
    .local v0, "otherImpl":Landroid/support/v4/app/l$a;
    iget-object v1, p0, Landroid/support/v4/app/l$a;->c:Landroid/support/v4/app/m;

    iget-object v2, v0, Landroid/support/v4/app/l$a;->c:Landroid/support/v4/app/m;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m;)V

    .line 355
    .end local v0    # "otherImpl":Landroid/support/v4/app/l$a;
    :cond_0
    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v4/app/l$a;->c:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.class Landroid/support/v4/app/l$c;
.super Landroid/support/v4/app/l;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final c:Landroid/support/v4/app/o;


# direct methods
.method constructor <init>(Landroid/support/v4/app/o;)V
    .locals 0
    .param p1, "impl"    # Landroid/support/v4/app/o;

    .prologue
    .line 392
    invoke-direct {p0}, Landroid/support/v4/app/l;-><init>()V

    .line 393
    iput-object p1, p0, Landroid/support/v4/app/l$c;->c:Landroid/support/v4/app/o;

    .line 394
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Landroid/support/v4/app/l;
    .locals 2
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 412
    new-instance v0, Landroid/support/v4/app/l$c;

    iget-object v1, p0, Landroid/support/v4/app/l$c;->c:Landroid/support/v4/app/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/o;->a(Landroid/graphics/Rect;)Landroid/support/v4/app/o;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/l$c;-><init>(Landroid/support/v4/app/o;)V

    return-object v0
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v4/app/l$c;->c:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/app/PendingIntent;)V

    .line 423
    return-void
.end method

.method public a(Landroid/support/v4/app/l;)V
    .locals 3
    .param p1, "otherOptions"    # Landroid/support/v4/app/l;

    .prologue
    .line 403
    instance-of v1, p1, Landroid/support/v4/app/l$c;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 405
    check-cast v0, Landroid/support/v4/app/l$c;

    .line 406
    .local v0, "otherImpl":Landroid/support/v4/app/l$c;
    iget-object v1, p0, Landroid/support/v4/app/l$c;->c:Landroid/support/v4/app/o;

    iget-object v2, v0, Landroid/support/v4/app/l$c;->c:Landroid/support/v4/app/o;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/o;)V

    .line 408
    .end local v0    # "otherImpl":Landroid/support/v4/app/l$c;
    :cond_0
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v4/app/l$c;->c:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v4/app/l$c;->c:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
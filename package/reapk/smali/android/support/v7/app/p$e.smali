.class Landroid/support/v7/app/p$e;
.super Landroid/support/v4/app/ay$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Landroid/support/v4/app/ay$e;-><init>()V

    .line 457
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ay$d;Landroid/support/v4/app/ax;)Landroid/app/Notification;
    .locals 3
    .param p1, "b"    # Landroid/support/v4/app/ay$d;
    .param p2, "builder"    # Landroid/support/v4/app/ax;

    .prologue
    .line 462
    invoke-static {p2, p1}, Landroid/support/v7/app/p;->a(Landroid/support/v4/app/ax;Landroid/support/v4/app/ay$d;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 463
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-interface {p2}, Landroid/support/v4/app/ax;->b()Landroid/app/Notification;

    move-result-object v1

    .line 466
    .local v1, "n":Landroid/app/Notification;
    if-eqz v0, :cond_1

    .line 467
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 471
    :cond_0
    :goto_0
    return-object v1

    .line 468
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/ay$d;->e()Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {p1}, Landroid/support/v4/app/ay$d;->e()Landroid/widget/RemoteViews;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

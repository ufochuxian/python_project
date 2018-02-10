.class Landroid/support/v7/app/p$g;
.super Landroid/support/v4/app/ay$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Landroid/support/v4/app/ay$e;-><init>()V

    .line 498
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ay$d;Landroid/support/v4/app/ax;)Landroid/app/Notification;
    .locals 2
    .param p1, "b"    # Landroid/support/v4/app/ay$d;
    .param p2, "builder"    # Landroid/support/v4/app/ax;

    .prologue
    .line 503
    invoke-static {p2, p1}, Landroid/support/v7/app/p;->c(Landroid/support/v4/app/ax;Landroid/support/v4/app/ay$d;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 504
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-interface {p2}, Landroid/support/v4/app/ax;->b()Landroid/app/Notification;

    move-result-object v1

    .line 507
    .local v1, "n":Landroid/app/Notification;
    if-eqz v0, :cond_0

    .line 508
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 510
    :cond_0
    invoke-static {v1, p1}, Landroid/support/v7/app/p;->b(Landroid/app/Notification;Landroid/support/v4/app/ay$d;)V

    .line 511
    invoke-static {v1, p1}, Landroid/support/v7/app/p;->c(Landroid/app/Notification;Landroid/support/v4/app/ay$d;)V

    .line 512
    return-object v1
.end method

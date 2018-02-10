.class Landroid/support/v4/media/u$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/u;


# direct methods
.method constructor <init>(Landroid/support/v4/media/u;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/u;

    .prologue
    .line 81
    iput-object p1, p0, Landroid/support/v4/media/u$5;->a:Landroid/support/v4/media/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlaybackPosition()J
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/media/u$5;->a:Landroid/support/v4/media/u;

    iget-object v0, v0, Landroid/support/v4/media/u;->d:Landroid/support/v4/media/t;

    invoke-interface {v0}, Landroid/support/v4/media/t;->a()J

    move-result-wide v0

    return-wide v0
.end method

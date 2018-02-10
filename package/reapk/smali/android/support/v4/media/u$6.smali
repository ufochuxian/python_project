.class Landroid/support/v4/media/u$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


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
    .line 88
    iput-object p1, p0, Landroid/support/v4/media/u$6;->a:Landroid/support/v4/media/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackPositionUpdate(J)V
    .locals 1
    .param p1, "newPositionMs"    # J

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/media/u$6;->a:Landroid/support/v4/media/u;

    iget-object v0, v0, Landroid/support/v4/media/u;->d:Landroid/support/v4/media/t;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/t;->a(J)V

    .line 91
    return-void
.end method

.class Landroid/support/v4/media/session/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/i$a;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/session/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Landroid/support/v4/media/session/i$b;, "Landroid/support/v4/media/session/i$b<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/i$a;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/support/v4/media/session/i$b;->a:Landroid/support/v4/media/session/i$a;

    .line 117
    return-void
.end method


# virtual methods
.method public onPlaybackPositionUpdate(J)V
    .locals 1
    .param p1, "newPositionMs"    # J

    .prologue
    .line 121
    .local p0, "this":Landroid/support/v4/media/session/i$b;, "Landroid/support/v4/media/session/i$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/i$b;->a:Landroid/support/v4/media/session/i$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/i$a;->b(J)V

    .line 122
    return-void
.end method

.class Landroid/support/v4/media/session/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/RemoteControlClient$OnMetadataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/j$a;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/RemoteControlClient$OnMetadataUpdateListener;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/session/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Landroid/support/v4/media/session/j$b;, "Landroid/support/v4/media/session/j$b<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/j$a;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/support/v4/media/session/j$b;->a:Landroid/support/v4/media/session/j$a;

    .line 95
    return-void
.end method


# virtual methods
.method public onMetadataUpdate(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 99
    .local p0, "this":Landroid/support/v4/media/session/j$b;, "Landroid/support/v4/media/session/j$b<TT;>;"
    const v0, 0x10000001

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/media/Rating;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/v4/media/session/j$b;->a:Landroid/support/v4/media/session/j$a;

    invoke-interface {v0, p2}, Landroid/support/v4/media/session/j$a;->a(Ljava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method

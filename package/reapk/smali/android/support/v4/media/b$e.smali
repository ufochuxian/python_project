.class Landroid/support/v4/media/b$e;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/b$d;",
        ">",
        "Landroid/media/browse/MediaBrowser$SubscriptionCallback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/b$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Landroid/support/v4/media/b$e;, "Landroid/support/v4/media/b$e<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/b$d;, "TT;"
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    .line 128
    iput-object p1, p0, Landroid/support/v4/media/b$e;->a:Landroid/support/v4/media/b$d;

    .line 129
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Landroid/support/v4/media/b$e;, "Landroid/support/v4/media/b$e<TT;>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Landroid/support/v4/media/b$e;->a:Landroid/support/v4/media/b$d;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/b$d;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 135
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 139
    .local p0, "this":Landroid/support/v4/media/b$e;, "Landroid/support/v4/media/b$e<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/b$e;->a:Landroid/support/v4/media/b$d;

    invoke-interface {v0, p1}, Landroid/support/v4/media/b$d;->a(Ljava/lang/String;)V

    .line 140
    return-void
.end method

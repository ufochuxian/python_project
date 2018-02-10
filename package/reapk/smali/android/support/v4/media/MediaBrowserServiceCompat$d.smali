.class Landroid/support/v4/media/MediaBrowserServiceCompat$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$c;
.implements Landroid/support/v4/media/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Landroid/os/Messenger;

.field final synthetic c:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/MediaBrowserServiceCompat;

    .prologue
    .line 225
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/g;->a(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/g$a;
    .locals 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "rootExtras":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    const-string v2, "extra_client_version"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const-string v2, "extra_client_version"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 292
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->m:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->b:Landroid/os/Messenger;

    .line 293
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "rootExtras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 294
    .restart local v1    # "rootExtras":Landroid/os/Bundle;
    const-string v2, "extra_service_version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string v2, "extra_messenger"

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->b:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/y;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 297
    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    move-result-object v0

    .line 299
    .local v0, "root":Landroid/support/v4/media/MediaBrowserServiceCompat$a;
    if-nez v0, :cond_1

    .line 300
    const/4 v2, 0x0

    .line 308
    :goto_0
    return-object v2

    .line 302
    :cond_1
    if-nez v1, :cond_3

    .line 303
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 307
    :cond_2
    :goto_1
    new-instance v2, Landroid/support/v4/media/g$a;

    .line 308
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/support/v4/media/g$a;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->b()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 305
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/g;->a(Landroid/content/Context;Landroid/support/v4/media/g$d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/g;->a(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public a(Landroid/support/v4/media/session/g$i;)V
    .locals 2
    .param p1, "token"    # Landroid/support/v4/media/session/g$i;

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/g$i;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->b:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->m:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/g$c;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/g$c",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "resultWrapper":Landroid/support/v4/media/g$c;, "Landroid/support/v4/media/g$c<Ljava/util/List<Landroid/os/Parcel;>;>;"
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Ljava/lang/Object;Landroid/support/v4/media/g$c;)V

    .line 335
    .local v0, "result":Landroid/support/v4/media/MediaBrowserServiceCompat$h;, "Landroid/support/v4/media/MediaBrowserServiceCompat$h<Ljava/util/List<Landroid/support/v4/media/a$k;>;>;"
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    .line 336
    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->b:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    if-nez v1, :cond_2

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onLoadChildren or onLoadItem methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->b:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.class Landroid/support/v4/media/session/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/g$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/g$a;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$a;->b()V

    .line 979
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 993
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/g$a;->a(J)V

    .line 994
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-static {p1}, Landroid/support/v4/media/p;->a(Ljava/lang/Object;)Landroid/support/v4/media/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/g$a;->a(Landroid/support/v4/media/p;)V

    .line 1034
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 983
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/g$a;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 984
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 940
    const-string v2, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 941
    iget-object v2, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    iget-object v2, v2, Landroid/support/v4/media/session/g$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/g$c;

    .line 942
    .local v0, "impl":Landroid/support/v4/media/session/g$c;
    if-eqz v0, :cond_0

    .line 943
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 944
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "android.support.v4.media.session.EXTRA_BINDER"

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$c;->g()Landroid/support/v4/media/session/g$c$a;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/y;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 945
    const/4 v2, 0x0

    invoke-virtual {p3, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 969
    .end local v0    # "impl":Landroid/support/v4/media/session/g$c;
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    const-string v2, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 948
    const-class v2, Landroid/support/v4/media/j;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 949
    iget-object v3, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    const-string v2, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    .line 950
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/j;

    .line 949
    invoke-virtual {v3, v2}, Landroid/support/v4/media/session/g$a;->a(Landroid/support/v4/media/j;)V

    goto :goto_0

    .line 952
    :cond_2
    const-string v2, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 953
    const-class v2, Landroid/support/v4/media/j;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 954
    iget-object v3, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    const-string v2, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    .line 955
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/j;

    const-string v4, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    .line 957
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 954
    invoke-virtual {v3, v2, v4}, Landroid/support/v4/media/session/g$a;->a(Landroid/support/v4/media/j;I)V

    goto :goto_0

    .line 958
    :cond_3
    const-string v2, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 959
    const-class v2, Landroid/support/v4/media/j;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 960
    iget-object v3, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    const-string v2, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    .line 961
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/j;

    .line 960
    invoke-virtual {v3, v2}, Landroid/support/v4/media/session/g$a;->b(Landroid/support/v4/media/j;)V

    goto :goto_0

    .line 963
    :cond_4
    const-string v2, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 964
    iget-object v2, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    .line 965
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 964
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/g$a;->b(I)V

    goto :goto_0

    .line 967
    :cond_5
    iget-object v2, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/media/session/g$a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    .line 973
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/g$a;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$a;->c()V

    .line 999
    return-void
.end method

.method public b(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 1028
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/g$a;->b(J)V

    .line 1029
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 988
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/g$a;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 989
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$a;->d()V

    .line 1004
    return-void
.end method

.method public c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1038
    const-string v6, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1039
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1040
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1041
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v6, v5, v0}, Landroid/support/v4/media/session/g$a;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1065
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 1042
    :cond_0
    const-string v6, "android.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1043
    iget-object v6, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v6}, Landroid/support/v4/media/session/g$a;->a()V

    goto :goto_0

    .line 1044
    :cond_1
    const-string v6, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1045
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1046
    .local v2, "mediaId":Ljava/lang/String;
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1047
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v6, v2, v0}, Landroid/support/v4/media/session/g$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1048
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "mediaId":Ljava/lang/String;
    :cond_2
    const-string v6, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1049
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1050
    .local v3, "query":Ljava/lang/String;
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1051
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v6, v3, v0}, Landroid/support/v4/media/session/g$a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1052
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "query":Ljava/lang/String;
    :cond_3
    const-string v6, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1053
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1054
    .restart local v5    # "uri":Landroid/net/Uri;
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1055
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v6, v5, v0}, Landroid/support/v4/media/session/g$a;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1056
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    const-string v6, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1057
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1058
    .local v4, "repeatMode":I
    iget-object v6, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v6, v4}, Landroid/support/v4/media/session/g$a;->a(I)V

    goto :goto_0

    .line 1059
    .end local v4    # "repeatMode":I
    :cond_5
    const-string v6, "android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1060
    const-string v6, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1061
    .local v1, "enabled":Z
    iget-object v6, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v6, v1}, Landroid/support/v4/media/session/g$a;->a(Z)V

    goto/16 :goto_0

    .line 1063
    .end local v1    # "enabled":Z
    :cond_6
    iget-object v6, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v6, p1, p2}, Landroid/support/v4/media/session/g$a;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$a;->e()V

    .line 1009
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$a;->f()V

    .line 1014
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$a;->g()V

    .line 1019
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Landroid/support/v4/media/session/g$a$a;->a:Landroid/support/v4/media/session/g$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$a;->h()V

    .line 1024
    return-void
.end method

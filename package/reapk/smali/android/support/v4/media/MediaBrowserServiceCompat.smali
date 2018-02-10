.class public abstract Landroid/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompat$a;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$k;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$j;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$i;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$h;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$b;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$l;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$f;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$e;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$d;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$g;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "MBServiceCompat"

.field static final b:Z

.field public static final c:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field public static final d:Ljava/lang/String; = "media_item"
    .annotation build Landroid/support/annotation/RestrictTo;
        a = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "search_results"
    .annotation build Landroid/support/annotation/RestrictTo;
        a = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final f:I = 0x1

.field static final g:I = 0x2

.field static final h:I = 0x4

.field static final i:I = -0x1

.field static final j:I


# instance fields
.field final k:Landroid/support/v4/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/a",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$b;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

.field final m:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

.field n:Landroid/support/v4/media/session/g$i;

.field private o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 144
    new-instance v0, Landroid/support/v4/k/a;

    invoke-direct {v0}, Landroid/support/v4/k/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->k:Landroid/support/v4/k/a;

    .line 146
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->m:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    .line 1254
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$a;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation
.end method

.method public a()Landroid/support/v4/media/session/g$i;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->n:Landroid/support/v4/media/session/g$i;

    return-object v0
.end method

.method a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    const/4 v5, -0x1

    .line 1177
    if-nez p1, :cond_1

    .line 1178
    const/4 p1, 0x0

    .line 1193
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 1180
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    :cond_1
    const-string v4, "android.media.browse.extra.PAGE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1181
    .local v1, "page":I
    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1182
    .local v2, "pageSize":I
    if-ne v1, v5, :cond_2

    if-eq v2, v5, :cond_0

    .line 1185
    :cond_2
    mul-int v0, v2, v1

    .line 1186
    .local v0, "fromIndex":I
    add-int v3, v0, v2

    .line 1187
    .local v3, "toIndex":I
    if-ltz v1, :cond_3

    const/4 v4, 0x1

    if-lt v2, v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 1188
    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 1190
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 1191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1193
    :cond_5
    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/g$i;)V
    .locals 2
    .param p1, "token"    # Landroid/support/v4/media/session/g$i;

    .prologue
    .line 992
    if-nez p1, :cond_0

    .line 993
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session token may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->n:Landroid/support/v4/media/session/g$i;

    if-eqz v0, :cond_1

    .line 996
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The session token has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->n:Landroid/support/v4/media/session/g$i;

    .line 999
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->a(Landroid/support/v4/media/session/g$i;)V

    .line 1000
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 1038
    if-nez p1, :cond_0

    .line 1039
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1042
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 1056
    if-nez p1, :cond_0

    .line 1057
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_0
    if-nez p2, :cond_1

    .line 1060
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1063
    return-void
.end method

.method a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/support/v4/os/m;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "connection"    # Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    .param p4, "receiver"    # Landroid/support/v4/os/m;

    .prologue
    .line 1224
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;

    invoke-direct {v0, p0, p1, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/m;)V

    .line 1240
    .local v0, "result":Landroid/support/v4/media/MediaBrowserServiceCompat$h;, "Landroid/support/v4/media/MediaBrowserServiceCompat$h<Ljava/util/List<Landroid/support/v4/media/a$k;>;>;"
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 1241
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    .line 1242
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 1244
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1245
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSearch must call detach() or sendResult() before returning for query="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1248
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3    # Landroid/support/v4/media/MediaBrowserServiceCompat$h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$h",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p3, "result":Landroid/support/v4/media/MediaBrowserServiceCompat$h;, "Landroid/support/v4/media/MediaBrowserServiceCompat$h<Ljava/util/List<Landroid/support/v4/media/a$k;>;>;"
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->a(I)V

    .line 980
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->a(Ljava/lang/Object;)V

    .line 981
    return-void
.end method

.method a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1136
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1161
    .local v0, "result":Landroid/support/v4/media/MediaBrowserServiceCompat$h;, "Landroid/support/v4/media/MediaBrowserServiceCompat$h<Ljava/util/List<Landroid/support/v4/media/a$k;>;>;"
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 1162
    if-nez p3, :cond_0

    .line 1163
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    .line 1167
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 1169
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1170
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1165
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1173
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1089
    iget-object v2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1090
    .local v1, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-nez v1, :cond_0

    .line 1091
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    .restart local v1    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/k/l;

    .line 1094
    .local v0, "callback":Landroid/support/v4/k/l;, "Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v2, v0, Landroid/support/v4/k/l;->a:Ljava/lang/Object;

    if-ne p3, v2, :cond_1

    iget-object v2, v0, Landroid/support/v4/k/l;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1095
    invoke-static {p4, v2}, Landroid/support/v4/media/e;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1103
    .end local v0    # "callback":Landroid/support/v4/k/l;, "Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    :goto_0
    return-void

    .line 1099
    :cond_2
    new-instance v2, Landroid/support/v4/k/l;

    invoke-direct {v2, p3, p4}, Landroid/support/v4/k/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    iget-object v2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    invoke-virtual {p0, p1, p2, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/support/v4/os/m;)V
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    .param p3, "receiver"    # Landroid/support/v4/os/m;

    .prologue
    .line 1198
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;

    invoke-direct {v0, p0, p1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/m;)V

    .line 1212
    .local v0, "result":Landroid/support/v4/media/MediaBrowserServiceCompat$h;, "Landroid/support/v4/media/MediaBrowserServiceCompat$h<Landroid/support/v4/media/a$k;>;"
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 1213
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    .line 1214
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->l:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 1216
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1217
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1220
    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$h",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$h",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 929
    .local p2, "result":Landroid/support/v4/media/MediaBrowserServiceCompat$h;, "Landroid/support/v4/media/MediaBrowserServiceCompat$h<Ljava/util/List<Landroid/support/v4/media/a$k;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->a(I)V

    .line 930
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V

    .line 931
    return-void
.end method

.method a(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 1069
    if-nez p1, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return v4

    .line 1072
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1073
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, "packages":[Ljava/lang/String;
    array-length v0, v2

    .line 1075
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1076
    aget-object v5, v2, v1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1077
    const/4 v4, 0x1

    goto :goto_0

    .line 1075
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1109
    if-nez p3, :cond_1

    .line 1110
    iget-object v3, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 1126
    :goto_0
    return v3

    .line 1110
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1112
    :cond_1
    const/4 v2, 0x0

    .line 1113
    .local v2, "removed":Z
    iget-object v3, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1114
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v0, :cond_4

    .line 1115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1116
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/k/l;

    iget-object v3, v3, Landroid/support/v4/k/l;->a:Ljava/lang/Object;

    if-ne p3, v3, :cond_2

    .line 1118
    const/4 v2, 0x1

    .line 1119
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1122
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1123
    iget-object v3, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_4
    move v3, v2

    .line 1126
    goto :goto_0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$h;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$h",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 952
    .local p2, "result":Landroid/support/v4/media/MediaBrowserServiceCompat$h;, "Landroid/support/v4/media/MediaBrowserServiceCompat$h<Landroid/support/v4/media/a$k;>;"
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->a(I)V

    .line 953
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->a(Ljava/lang/Object;)V

    .line 954
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 851
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 831
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 832
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/support/v4/os/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$f;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    .line 841
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->a()V

    .line 842
    return-void

    .line 834
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 835
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$e;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    goto :goto_0

    .line 836
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 837
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$d;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    goto :goto_0

    .line 839
    :cond_3
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->o:Landroid/support/v4/media/MediaBrowserServiceCompat$c;

    goto :goto_0
.end method

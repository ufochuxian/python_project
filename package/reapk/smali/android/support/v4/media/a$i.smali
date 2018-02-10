.class Landroid/support/v4/media/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/a$e;
.implements Landroid/support/v4/media/a$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/a$i$a;
    }
.end annotation


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x3

.field private static final m:I = 0x2


# instance fields
.field final d:Landroid/content/Context;

.field final e:Landroid/content/ComponentName;

.field final f:Landroid/support/v4/media/a$b;

.field final g:Landroid/os/Bundle;

.field final h:Landroid/support/v4/media/a$a;

.field i:I

.field j:Landroid/support/v4/media/a$i$a;

.field k:Landroid/support/v4/media/a$n;

.field l:Landroid/os/Messenger;

.field private final n:Landroid/support/v4/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/a$o;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:Landroid/support/v4/media/session/g$i;

.field private q:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/a$b;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/support/v4/media/a$b;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    new-instance v0, Landroid/support/v4/media/a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/a$a;-><init>(Landroid/support/v4/media/a$j;)V

    iput-object v0, p0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    .line 859
    new-instance v0, Landroid/support/v4/k/a;

    invoke-direct {v0}, Landroid/support/v4/k/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/a$i;->n:Landroid/support/v4/k/a;

    .line 861
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/a$i;->i:I

    .line 871
    if-nez p1, :cond_0

    .line 872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_0
    if-nez p2, :cond_1

    .line 875
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_1
    if-nez p3, :cond_2

    .line 878
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_2
    iput-object p1, p0, Landroid/support/v4/media/a$i;->d:Landroid/content/Context;

    .line 881
    iput-object p2, p0, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    .line 882
    iput-object p3, p0, Landroid/support/v4/media/a$i;->f:Landroid/support/v4/media/a$b;

    .line 883
    if-nez p4, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/a$i;->g:Landroid/os/Bundle;

    .line 884
    return-void

    .line 883
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 1269
    packed-switch p0, :pswitch_data_0

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1271
    :pswitch_0
    const-string v0, "CONNECT_STATE_DISCONNECTED"

    goto :goto_0

    .line 1273
    :pswitch_1
    const-string v0, "CONNECT_STATE_CONNECTING"

    goto :goto_0

    .line 1275
    :pswitch_2
    const-string v0, "CONNECT_STATE_CONNECTED"

    goto :goto_0

    .line 1277
    :pswitch_3
    const-string v0, "CONNECT_STATE_SUSPENDED"

    goto :goto_0

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/os/Messenger;Ljava/lang/String;)Z
    .locals 3
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "funcName"    # Ljava/lang/String;

    .prologue
    .line 1287
    iget-object v0, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    if-eq v0, p1, :cond_1

    .line 1288
    iget v0, p0, Landroid/support/v4/media/a$i;->i:I

    if-eqz v0, :cond_0

    .line 1289
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_0
    const/4 v0, 0x0

    .line 1294
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 980
    iget-object v0, p0, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Landroid/support/v4/media/a$i;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 983
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/a$i;->i:I

    .line 984
    iput-object v2, p0, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    .line 985
    iput-object v2, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    .line 986
    iput-object v2, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    .line 987
    iget-object v0, p0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/a$a;->a(Landroid/os/Messenger;)V

    .line 988
    iput-object v2, p0, Landroid/support/v4/media/a$i;->o:Ljava/lang/String;

    .line 989
    iput-object v2, p0, Landroid/support/v4/media/a$i;->p:Landroid/support/v4/media/session/g$i;

    .line 990
    return-void
.end method

.method public a(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    .line 1205
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectFailed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string v0, "onConnectFailed"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/a$i;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1212
    :cond_0
    iget v0, p0, Landroid/support/v4/media/a$i;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1213
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect from service while mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/a$i;->i:I

    invoke-static {v2}, Landroid/support/v4/media/a$i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1219
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->a()V

    .line 1222
    iget-object v0, p0, Landroid/support/v4/media/a$i;->f:Landroid/support/v4/media/a$b;

    invoke-virtual {v0}, Landroid/support/v4/media/a$b;->c()V

    goto :goto_0
.end method

.method public a(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/g$i;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/support/v4/media/session/g$i;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 1162
    const-string v8, "onConnect"

    invoke-direct {p0, p1, v8}, Landroid/support/v4/media/a$i;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    iget v8, p0, Landroid/support/v4/media/a$i;->i:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 1167
    const-string v8, "MediaBrowserCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnect from service while mState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/support/v4/media/a$i;->i:I

    invoke-static {v10}, Landroid/support/v4/media/a$i;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "... ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1171
    :cond_2
    iput-object p2, p0, Landroid/support/v4/media/a$i;->o:Ljava/lang/String;

    .line 1172
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/support/v4/media/a$i;->p:Landroid/support/v4/media/session/g$i;

    .line 1173
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/support/v4/media/a$i;->q:Landroid/os/Bundle;

    .line 1174
    const/4 v8, 0x2

    iput v8, p0, Landroid/support/v4/media/a$i;->i:I

    .line 1176
    sget-boolean v8, Landroid/support/v4/media/a;->b:Z

    if-eqz v8, :cond_3

    .line 1177
    const-string v8, "MediaBrowserCompat"

    const-string v9, "ServiceCallbacks.onConnect..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->b()V

    .line 1180
    :cond_3
    iget-object v8, p0, Landroid/support/v4/media/a$i;->f:Landroid/support/v4/media/a$b;

    invoke-virtual {v8}, Landroid/support/v4/media/a$b;->a()V

    .line 1186
    :try_start_0
    iget-object v8, p0, Landroid/support/v4/media/a$i;->n:Landroid/support/v4/k/a;

    invoke-virtual {v8}, Landroid/support/v4/k/a;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1187
    .local v7, "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/media/a$o;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1188
    .local v4, "id":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/a$o;

    .line 1189
    .local v6, "sub":Landroid/support/v4/media/a$o;
    invoke-virtual {v6}, Landroid/support/v4/media/a$o;->c()Ljava/util/List;

    move-result-object v1

    .line 1190
    .local v1, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$p;>;"
    invoke-virtual {v6}, Landroid/support/v4/media/a$o;->b()Ljava/util/List;

    move-result-object v5

    .line 1191
    .local v5, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 1192
    iget-object v10, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/media/a$p;

    invoke-static {v8}, Landroid/support/v4/media/a$p;->a(Landroid/support/v4/media/a$p;)Landroid/os/IBinder;

    move-result-object v11

    .line 1193
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    iget-object v12, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    .line 1192
    invoke-virtual {v10, v4, v11, v8, v12}, Landroid/support/v4/media/a$n;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1196
    .end local v1    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$p;>;"
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v6    # "sub":Landroid/support/v4/media/a$o;
    .end local v7    # "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/media/a$o;>;"
    :catch_0
    move-exception v2

    .line 1199
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v8, "MediaBrowserCompat"

    const-string v9, "addSubscription failed with RemoteException."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/List;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1229
    const-string v2, "onLoadChildren"

    invoke-direct {p0, p1, v2}, Landroid/support/v4/media/a$i;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    sget-boolean v2, Landroid/support/v4/media/a;->b:Z

    if-eqz v2, :cond_2

    .line 1234
    const-string v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadChildren for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_2
    iget-object v2, p0, Landroid/support/v4/media/a$i;->n:Landroid/support/v4/k/a;

    invoke-virtual {v2, p2}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/a$o;

    .line 1239
    .local v0, "subscription":Landroid/support/v4/media/a$o;
    if-nez v0, :cond_3

    .line 1240
    sget-boolean v2, Landroid/support/v4/media/a;->b:Z

    if-eqz v2, :cond_0

    .line 1241
    const-string v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1247
    :cond_3
    invoke-virtual {v0, p4}, Landroid/support/v4/media/a$o;->a(Landroid/os/Bundle;)Landroid/support/v4/media/a$p;

    move-result-object v1

    .line 1248
    .local v1, "subscriptionCallback":Landroid/support/v4/media/a$p;
    if-eqz v1, :cond_0

    .line 1249
    if-nez p4, :cond_5

    .line 1250
    if-nez p3, :cond_4

    .line 1251
    invoke-virtual {v1, p2}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    :cond_4
    invoke-virtual {v1, p2, p3}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1256
    :cond_5
    if-nez p3, :cond_6

    .line 1257
    invoke-virtual {v1, p2, p4}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1259
    :cond_6
    invoke-virtual {v1, p2, p3, p4}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$l;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/support/v4/media/a$l;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 1133
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1134
    const-string v2, "MediaBrowserCompat"

    const-string v3, "Not connected, unable to search."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v2, p0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    new-instance v3, Landroid/support/v4/media/a$i$4;

    invoke-direct {v3, p0, p3, p1, p2}, Landroid/support/v4/media/a$i$4;-><init>(Landroid/support/v4/media/a$i;Landroid/support/v4/media/a$l;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/a$a;->post(Ljava/lang/Runnable;)Z

    .line 1156
    :goto_0
    return-void

    .line 1144
    :cond_0
    new-instance v1, Landroid/support/v4/media/a$m;

    iget-object v2, p0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/support/v4/media/a$m;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$l;Landroid/os/Handler;)V

    .line 1146
    .local v1, "receiver":Landroid/support/v4/os/m;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    iget-object v3, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    invoke-virtual {v2, p1, p2, v1, v3}, Landroid/support/v4/media/a$n;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/m;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote error searching items with query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    iget-object v2, p0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    new-instance v3, Landroid/support/v4/media/a$i$5;

    invoke-direct {v3, p0, p3, p1, p2}, Landroid/support/v4/media/a$i$5;-><init>(Landroid/support/v4/media/a$i;Landroid/support/v4/media/a$l;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/a$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$p;)V
    .locals 6
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/support/v4/media/a$p;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 1037
    iget-object v3, p0, Landroid/support/v4/media/a$i;->n:Landroid/support/v4/k/a;

    invoke-virtual {v3, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/a$o;

    .line 1038
    .local v2, "sub":Landroid/support/v4/media/a$o;
    if-nez v2, :cond_0

    .line 1039
    new-instance v2, Landroid/support/v4/media/a$o;

    .end local v2    # "sub":Landroid/support/v4/media/a$o;
    invoke-direct {v2}, Landroid/support/v4/media/a$o;-><init>()V

    .line 1040
    .restart local v2    # "sub":Landroid/support/v4/media/a$o;
    iget-object v3, p0, Landroid/support/v4/media/a$i;->n:Landroid/support/v4/k/a;

    invoke-virtual {v3, p1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    :cond_0
    if-nez p2, :cond_2

    const/4 v0, 0x0

    .line 1043
    .local v0, "copiedOptions":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2, v0, p3}, Landroid/support/v4/media/a$o;->a(Landroid/os/Bundle;Landroid/support/v4/media/a$p;)V

    .line 1047
    iget v3, p0, Landroid/support/v4/media/a$i;->i:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1049
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    invoke-static {p3}, Landroid/support/v4/media/a$p;->a(Landroid/support/v4/media/a$p;)Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    invoke-virtual {v3, p1, v4, v0, v5}, Landroid/support/v4/media/a$n;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :cond_1
    :goto_1
    return-void

    .line 1042
    .end local v0    # "copiedOptions":Landroid/os/Bundle;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1051
    .restart local v0    # "copiedOptions":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1054
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "MediaBrowserCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/a$c;)V
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "cb"    # Landroid/support/v4/media/a$c;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 1100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mediaId is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1103
    :cond_0
    if-nez p2, :cond_1

    .line 1104
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cb is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1106
    :cond_1
    iget v2, p0, Landroid/support/v4/media/a$i;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 1107
    const-string v2, "MediaBrowserCompat"

    const-string v3, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v2, p0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    new-instance v3, Landroid/support/v4/media/a$i$2;

    invoke-direct {v3, p0, p2, p1}, Landroid/support/v4/media/a$i$2;-><init>(Landroid/support/v4/media/a$i;Landroid/support/v4/media/a$c;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/a$a;->post(Ljava/lang/Runnable;)Z

    .line 1128
    :goto_0
    return-void

    .line 1116
    :cond_2
    new-instance v1, Landroid/support/v4/media/a$d;

    iget-object v2, p0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    invoke-direct {v1, p1, p2, v2}, Landroid/support/v4/media/a$d;-><init>(Ljava/lang/String;Landroid/support/v4/media/a$c;Landroid/os/Handler;)V

    .line 1118
    .local v1, "receiver":Landroid/support/v4/os/m;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    iget-object v3, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    invoke-virtual {v2, p1, v1, v3}, Landroid/support/v4/media/a$n;->a(Ljava/lang/String;Landroid/support/v4/os/m;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaBrowserCompat"

    const-string v3, "Remote error getting media item."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v2, p0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    new-instance v3, Landroid/support/v4/media/a$i$3;

    invoke-direct {v3, p0, p2, p1}, Landroid/support/v4/media/a$i$3;-><init>(Landroid/support/v4/media/a$i;Landroid/support/v4/media/a$c;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/a$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/a$p;)V
    .locals 9
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "callback"    # Landroid/support/v4/media/a$p;

    .prologue
    const/4 v8, 0x2

    .line 1061
    iget-object v5, p0, Landroid/support/v4/media/a$i;->n:Landroid/support/v4/k/a;

    invoke-virtual {v5, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/a$o;

    .line 1062
    .local v4, "sub":Landroid/support/v4/media/a$o;
    if-nez v4, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    if-nez p2, :cond_4

    .line 1069
    :try_start_0
    iget v5, p0, Landroid/support/v4/media/a$i;->i:I

    if-ne v5, v8, :cond_2

    .line 1070
    iget-object v5, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    invoke-virtual {v5, p1, v6, v7}, Landroid/support/v4/media/a$n;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/support/v4/media/a$o;->a()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez p2, :cond_0

    .line 1094
    :cond_3
    iget-object v5, p0, Landroid/support/v4/media/a$i;->n:Landroid/support/v4/k/a;

    invoke-virtual {v5, p1}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1074
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Landroid/support/v4/media/a$o;->c()Ljava/util/List;

    move-result-object v0

    .line 1075
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$p;>;"
    invoke-virtual {v4}, Landroid/support/v4/media/a$o;->b()Ljava/util/List;

    move-result-object v3

    .line 1076
    .local v3, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_2

    .line 1077
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p2, :cond_6

    .line 1078
    iget v5, p0, Landroid/support/v4/media/a$i;->i:I

    if-ne v5, v8, :cond_5

    .line 1079
    iget-object v5, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    .line 1080
    invoke-static {p2}, Landroid/support/v4/media/a$p;->a(Landroid/support/v4/media/a$p;)Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    .line 1079
    invoke-virtual {v5, p1, v6, v7}, Landroid/support/v4/media/a$n;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    .line 1082
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1083
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1076
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1087
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$p;>;"
    .end local v2    # "i":I
    .end local v3    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v1

    .line 1090
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "MediaBrowserCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method b()V
    .locals 3

    .prologue
    .line 1301
    const-string v0, "MediaBrowserCompat"

    const-string v1, "MediaBrowserCompat..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->f:Landroid/support/v4/media/a$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->g:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/a$i;->i:I

    invoke-static {v2}, Landroid/support/v4/media/a$i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceBinderWrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMediaSessionToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i;->p:Landroid/support/v4/media/session/g$i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 888
    iget v4, p0, Landroid/support/v4/media/a$i;->i:I

    if-eqz v4, :cond_0

    .line 889
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect() called while not disconnected (state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/v4/media/a$i;->i:I

    .line 890
    invoke-static {v6}, Landroid/support/v4/media/a$i;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 893
    :cond_0
    sget-boolean v4, Landroid/support/v4/media/a;->b:Z

    if-eqz v4, :cond_1

    .line 894
    iget-object v4, p0, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    if-eqz v4, :cond_1

    .line 895
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mServiceConnection should be null. Instead it is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 899
    :cond_1
    iget-object v4, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    if-eqz v4, :cond_2

    .line 900
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mServiceBinderWrapper should be null. Instead it is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 903
    :cond_2
    iget-object v4, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    if-eqz v4, :cond_3

    .line 904
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCallbacksMessenger should be null. Instead it is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 908
    :cond_3
    iput v5, p0, Landroid/support/v4/media/a$i;->i:I

    .line 910
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.browse.MediaBrowserService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 913
    new-instance v3, Landroid/support/v4/media/a$i$a;

    invoke-direct {v3, p0}, Landroid/support/v4/media/a$i$a;-><init>(Landroid/support/v4/media/a$i;)V

    iput-object v3, p0, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    .line 916
    .local v3, "thisConnection":Landroid/content/ServiceConnection;
    const/4 v0, 0x0

    .line 918
    .local v0, "bound":Z
    :try_start_0
    iget-object v4, p0, Landroid/support/v4/media/a$i;->d:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 923
    :goto_0
    if-nez v0, :cond_4

    .line 929
    iget-object v4, p0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    new-instance v5, Landroid/support/v4/media/a$i$1;

    invoke-direct {v5, p0, v3}, Landroid/support/v4/media/a$i$1;-><init>(Landroid/support/v4/media/a$i;Landroid/content/ServiceConnection;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/media/a$a;->post(Ljava/lang/Runnable;)Z

    .line 941
    :cond_4
    sget-boolean v4, Landroid/support/v4/media/a;->b:Z

    if-eqz v4, :cond_5

    .line 942
    const-string v4, "MediaBrowserCompat"

    const-string v5, "connect..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->b()V

    .line 945
    :cond_5
    return-void

    .line 919
    :catch_0
    move-exception v1

    .line 920
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "MediaBrowserCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed binding to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 952
    iget-object v1, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 954
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    iget-object v2, p0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/a$n;->a(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->a()V

    .line 963
    sget-boolean v1, Landroid/support/v4/media/a;->b:Z

    if-eqz v1, :cond_1

    .line 964
    const-string v1, "MediaBrowserCompat"

    const-string v2, "disconnect..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->b()V

    .line 967
    :cond_1
    return-void

    .line 955
    :catch_0
    move-exception v0

    .line 958
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException during connect for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 994
    iget v0, p0, Landroid/support/v4/media/a$i;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Landroid/content/ComponentName;
    .locals 3
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 999
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceComponent() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/a$i;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 1008
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoot() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/a$i;->i:I

    .line 1010
    invoke-static {v2}, Landroid/support/v4/media/a$i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$i;->o:Ljava/lang/String;

    return-object v0
.end method

.method public i()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtras() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/a$i;->i:I

    .line 1019
    invoke-static {v2}, Landroid/support/v4/media/a$i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$i;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method public j()Landroid/support/v4/media/session/g$i;
    .locals 3
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 1026
    invoke-virtual {p0}, Landroid/support/v4/media/a$i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessionToken() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/a$i;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$i;->p:Landroid/support/v4/media/session/g$i;

    return-object v0
.end method

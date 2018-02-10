.class Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "totalSize":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->d()Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->d()Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;->updateTotalSizeTextView(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v0    # "totalSize":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->d()Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->d()Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;->endOfDeleteCacheFile()V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

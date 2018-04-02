.class Lcom/chivox/android/AIRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chivox/android/AIRecorder;->start(Ljava/lang/String;Lcom/chivox/android/AIRecorder$Callback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chivox/android/AIRecorder;

.field final synthetic val$callback:Lcom/chivox/android/AIRecorder$Callback;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chivox/android/AIRecorder;Ljava/lang/String;Lcom/chivox/android/AIRecorder$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chivox/android/AIRecorder;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    iput-object p2, p0, Lcom/chivox/android/AIRecorder$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 76
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 78
    const/4 v9, 0x0

    .line 79
    .local v9, "file":Ljava/io/RandomAccessFile;
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$002(Lcom/chivox/android/AIRecorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$100(Lcom/chivox/android/AIRecorder;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v9

    .line 95
    :cond_0
    iget-object v13, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x0

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$200()I

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x2

    const v5, 0x4e200

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-static {v13, v0}, Lcom/chivox/android/AIRecorder;->access$002(Lcom/chivox/android/AIRecorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 100
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 104
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 106
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-interface {v0}, Lcom/chivox/android/AIRecorder$Callback;->onError()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-interface {v0}, Lcom/chivox/android/AIRecorder$Callback;->onStopped()V

    .line 163
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$602(Lcom/chivox/android/AIRecorder;Z)Z

    .line 165
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 174
    :cond_1
    if-eqz v9, :cond_2

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0, v9}, Lcom/chivox/android/AIRecorder;->access$900(Lcom/chivox/android/AIRecorder;Ljava/io/RandomAccessFile;)V

    .line 177
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$1002(Lcom/chivox/android/AIRecorder;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 183
    :cond_2
    :goto_0
    return-void

    .line 109
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-interface {v0}, Lcom/chivox/android/AIRecorder$Callback;->onStarted()V

    .line 117
    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$300()I

    move-result v0

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$200()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$400()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$500()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x8

    new-array v6, v0, [B

    .line 119
    .local v6, "buffer":[B
    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$300()I

    move-result v0

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$200()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$400()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v7, v0, 0x8

    .line 120
    .local v7, "discardBytes":I
    :goto_1
    if-lez v7, :cond_7

    .line 121
    array-length v0, v6

    if-ge v0, v7, :cond_4

    array-length v11, v6

    .line 122
    .local v11, "requestBytes":I
    :goto_2
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, v11}, Landroid/media/AudioRecord;->read([BII)I

    move-result v10

    .line 123
    .local v10, "readBytes":I
    if-lez v10, :cond_7

    .line 124
    sub-int/2addr v7, v10

    .line 129
    goto :goto_1

    .end local v10    # "readBytes":I
    .end local v11    # "requestBytes":I
    :cond_4
    move v11, v7

    .line 121
    goto :goto_2

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v6

    invoke-virtual {v0, v6, v1, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v12

    .line 142
    .local v12, "size":I
    if-lez v12, :cond_7

    .line 143
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    if-eqz v0, :cond_6

    .line 145
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-interface {v0, v6, v12}, Lcom/chivox/android/AIRecorder$Callback;->onData([BI)V

    .line 148
    :cond_6
    if-eqz v9, :cond_7

    .line 150
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v9, v6, v1, v12}, Lcom/chivox/android/AIRecorder;->access$700(Lcom/chivox/android/AIRecorder;Ljava/io/RandomAccessFile;[BII)V

    .line 131
    .end local v12    # "size":I
    :cond_7
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$600(Lcom/chivox/android/AIRecorder;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-interface {v0}, Lcom/chivox/android/AIRecorder$Callback;->onStopped()V

    .line 163
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$602(Lcom/chivox/android/AIRecorder;Z)Z

    .line 165
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 168
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 174
    :cond_9
    if-eqz v9, :cond_2

    .line 176
    :try_start_3
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0, v9}, Lcom/chivox/android/AIRecorder;->access$900(Lcom/chivox/android/AIRecorder;Ljava/io/RandomAccessFile;)V

    .line 177
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$1002(Lcom/chivox/android/AIRecorder;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 155
    .end local v6    # "buffer":[B
    .end local v7    # "discardBytes":I
    :catch_1
    move-exception v8

    .line 157
    .local v8, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$800(Lcom/chivox/android/AIRecorder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-interface {v0}, Lcom/chivox/android/AIRecorder$Callback;->onError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-interface {v0}, Lcom/chivox/android/AIRecorder$Callback;->onStopped()V

    .line 163
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$602(Lcom/chivox/android/AIRecorder;Z)Z

    .line 165
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 166
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 168
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 174
    :cond_a
    if-eqz v9, :cond_2

    .line 176
    :try_start_5
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0, v9}, Lcom/chivox/android/AIRecorder;->access$900(Lcom/chivox/android/AIRecorder;Ljava/io/RandomAccessFile;)V

    .line 177
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$1002(Lcom/chivox/android/AIRecorder;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 178
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 159
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 162
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-interface {v0}, Lcom/chivox/android/AIRecorder$Callback;->onStopped()V

    .line 163
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$602(Lcom/chivox/android/AIRecorder;Z)Z

    .line 165
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 166
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 168
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 174
    :cond_b
    if-eqz v9, :cond_2

    .line 176
    :try_start_6
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v0, v9}, Lcom/chivox/android/AIRecorder;->access$900(Lcom/chivox/android/AIRecorder;Ljava/io/RandomAccessFile;)V

    .line 177
    iget-object v0, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chivox/android/AIRecorder;->access$1002(Lcom/chivox/android/AIRecorder;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 178
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 162
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->val$callback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-interface {v1}, Lcom/chivox/android/AIRecorder$Callback;->onStopped()V

    .line 163
    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/chivox/android/AIRecorder;->access$602(Lcom/chivox/android/AIRecorder;Z)Z

    .line 165
    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v1}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 166
    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v1}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    .line 168
    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v1}, Lcom/chivox/android/AIRecorder;->access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 174
    :cond_c
    if-eqz v9, :cond_d

    .line 176
    :try_start_7
    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v1, v9}, Lcom/chivox/android/AIRecorder;->access$900(Lcom/chivox/android/AIRecorder;Ljava/io/RandomAccessFile;)V

    .line 177
    iget-object v1, p0, Lcom/chivox/android/AIRecorder$1;->this$0:Lcom/chivox/android/AIRecorder;

    iget-object v2, p0, Lcom/chivox/android/AIRecorder$1;->val$path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/chivox/android/AIRecorder;->access$1002(Lcom/chivox/android/AIRecorder;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 182
    :cond_d
    :goto_3
    throw v0

    .line 178
    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v0

    goto/16 :goto_0
.end method

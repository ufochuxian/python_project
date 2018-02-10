.class public Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/MultipartStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressNotifier"
.end annotation


# instance fields
.field private bytesRead:J

.field private final contentLength:J

.field private items:I

.field private final listener:Lorg/apache/commons/fileupload/ProgressListener;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/ProgressListener;J)V
    .locals 0
    .param p1, "pListener"    # Lorg/apache/commons/fileupload/ProgressListener;
    .param p2, "pContentLength"    # J

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    .line 123
    iput-wide p2, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->contentLength:J

    .line 124
    return-void
.end method

.method private notifyListener()V
    .locals 7

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    iget-wide v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->bytesRead:J

    iget-wide v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->contentLength:J

    iget v6, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->items:I

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/fileupload/ProgressListener;->update(JJI)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method noteBytesRead(I)V
    .locals 4
    .param p1, "pBytes"    # I

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->bytesRead:J

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->notifyListener()V

    .line 137
    return-void
.end method

.method noteItem()V
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->items:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->items:I

    .line 144
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->notifyListener()V

    .line 145
    return-void
.end method

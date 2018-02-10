.class public Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

.field private completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

.field private errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

.field private listener:Lcom/jiliguala/niuwa/recorder/audio/d;

.field private localPath:Ljava/lang/String;

.field private mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

.field private mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

.field private preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

.field private recordDone:Z

.field private simpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;)V
    .locals 4
    .param p1, "forumReplyView"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->recordDone:Z

    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    .line 56
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    .line 64
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    .line 72
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->listener:Lcom/jiliguala/niuwa/recorder/audio/d;

    .line 98
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    .line 99
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->configRecordSetting()V

    .line 100
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->simpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 101
    new-instance v0, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->listener:Lcom/jiliguala/niuwa/recorder/audio/d;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Lcom/jiliguala/niuwa/recorder/audio/d;)V

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->simpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/recorder/audio/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->uploadAudioRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/util/ArrayList;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->uploadAudioRecordPost(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Ljava/util/ArrayList;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p9}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->requestPostForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .prologue
    .line 39
    invoke-direct/range {p0 .. p8}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->requestReplyForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method private configRecordSetting()V
    .locals 6

    .prologue
    .line 445
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "uid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "timeStamp":Ljava/lang/String;
    new-instance v2, Lcom/jiliguala/niuwa/recorder/audio/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/recorder/audio/c;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    .line 448
    return-void
.end method

.method private generatePostBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)Lokhttp3/ab;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "audioUrl"    # Ljava/lang/String;
    .param p5, "boid"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "audioLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;",
            ">;)",
            "Lokhttp3/ab;"
        }
    .end annotation

    .prologue
    .line 367
    .local p9, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    invoke-static/range {p1 .. p9}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;->generatePost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;

    move-result-object v2

    .line 369
    .local v2, "template":Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 371
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private generateReplyBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lokhttp3/ab;
    .locals 3
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "audioPath"    # Ljava/lang/String;
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "audioLen"    # I

    .prologue
    .line 389
    invoke-static/range {p1 .. p8}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;->generateReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;

    move-result-object v2

    .line 391
    .local v2, "template":Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 393
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private postSub()Lrx/l;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)V

    return-object v0
.end method

.method private replySub()Lrx/l;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$7;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)V

    return-object v0
.end method

.method private requestPostForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "audioUrl"    # Ljava/lang/String;
    .param p5, "boid"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "audioLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p9, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 379
    invoke-direct/range {p0 .. p9}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->generatePostBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->h(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 380
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 381
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 382
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 383
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->postSub()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 385
    :cond_0
    return-void
.end method

.method private requestReplyForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "audioPath"    # Ljava/lang/String;
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "audioLen"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 400
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 401
    invoke-direct/range {p0 .. p8}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->generateReplyBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->i(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 402
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 403
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 404
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 405
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->replySub()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 399
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 407
    :cond_0
    return-void
.end method

.method private resetRecordTS()V
    .locals 4

    .prologue
    .line 474
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/recorder/audio/c;->a(J)V

    .line 475
    return-void
.end method

.method private startRecord()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->recordDone:Z

    .line 452
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->configRecordSetting()V

    .line 453
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Lcom/jiliguala/niuwa/recorder/audio/b;)V

    .line 454
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->b()V

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 456
    .local v0, "start":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/recorder/audio/c;->a(J)V

    .line 457
    return-void
.end method

.method private stopRecord()V
    .locals 8

    .prologue
    .line 460
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->recordDone:Z

    .line 462
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 463
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/recorder/audio/c;->b()J

    move-result-wide v2

    .line 464
    .local v2, "start":J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 466
    .local v0, "end":J
    sub-long v4, v0, v2

    .line 467
    .local v4, "totalRecordTime":J
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v6, v4, v5}, Lcom/jiliguala/niuwa/recorder/audio/c;->b(J)V

    .line 470
    .end local v0    # "end":J
    .end local v2    # "start":J
    .end local v4    # "totalRecordTime":J
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->resetRecordTS()V

    .line 471
    return-void
.end method

.method private uploadAudioRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "textContent"    # Ljava/lang/String;
    .param p4, "localImagePath"    # Ljava/lang/String;
    .param p5, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/c;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "audioPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 484
    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->uploadAudioRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v3    # "audioPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 487
    .restart local v3    # "audioPath":Ljava/lang/String;
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Ljava/lang/String;)[I

    move-result-object v13

    .line 489
    .local v13, "size":[I
    const/4 v9, 0x0

    const/4 v0, 0x0

    aget v10, v13, v0

    const/4 v0, 0x1

    aget v11, v13, v0

    const/4 v12, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v12}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->requestReplyForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0

    .line 492
    .end local v3    # "audioPath":Ljava/lang/String;
    .end local v13    # "size":[I
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Ljava/lang/String;)[I

    move-result-object v13

    .line 494
    .restart local v13    # "size":[I
    const/4 v9, 0x0

    const/4 v0, 0x0

    aget v10, v13, v0

    const/4 v0, 0x1

    aget v11, v13, v0

    const/4 v12, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v12}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->requestReplyForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private uploadAudioRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "audioPath"    # Ljava/lang/String;
    .param p4, "textContent"    # Ljava/lang/String;
    .param p5, "localImagePath"    # Ljava/lang/String;
    .param p6, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 500
    new-instance v7, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v8, 0x5

    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, p3, v0}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 530
    return-void
.end method

.method private uploadAudioRecordPost(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "boid"    # I
    .param p4, "audioPath"    # Ljava/lang/String;
    .param p5, "localImagePath"    # Ljava/lang/String;
    .param p6, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p7, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    new-instance v8, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v9, 0x5

    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p6

    move v6, p3

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v8, v9, p4, v0}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 442
    return-void
.end method

.method private uploadAudioRecordPost(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 17
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "boid"    # I
    .param p4, "localImagePath"    # Ljava/lang/String;
    .param p5, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p6, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/recorder/audio/c;->d()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "audioPath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 351
    invoke-direct/range {v1 .. v8}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->uploadAudioRecordPost(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 363
    .end local v5    # "audioPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 354
    .restart local v5    # "audioPath":Ljava/lang/String;
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Ljava/lang/String;)[I

    move-result-object v16

    .line 356
    .local v16, "size":[I
    const/4 v10, 0x0

    const/4 v1, 0x0

    aget v12, v16, v1

    const/4 v1, 0x1

    aget v13, v16, v1

    const/4 v14, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move/from16 v11, p3

    move-object/from16 v15, p6

    invoke-direct/range {v6 .. v15}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->requestPostForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)V

    goto :goto_0

    .line 359
    .end local v5    # "audioPath":Ljava/lang/String;
    .end local v16    # "size":[I
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Ljava/lang/String;)[I

    move-result-object v16

    .line 361
    .restart local v16    # "size":[I
    const/4 v10, 0x0

    const/4 v1, 0x0

    aget v12, v16, v1

    const/4 v1, 0x1

    aget v13, v16, v1

    const/4 v14, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move/from16 v11, p3

    move-object/from16 v15, p6

    invoke-direct/range {v6 .. v15}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->requestPostForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAudioRecord()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onAudioRecordCancel()V

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->recordDone:Z

    .line 296
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 297
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->resetRecordTS()V

    .line 298
    return-void
.end method

.method public cancelAudioRecordPlay()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->simpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 224
    return-void
.end method

.method public deleteCurrentAudioRecord()V
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->recordDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onShowDeleteAudioDialog()V

    .line 230
    :cond_0
    return-void
.end method

.method public getAudioRecordLen()J
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAudioLen()J
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/c;->b()J

    move-result-wide v0

    .line 166
    .local v0, "start":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 170
    .end local v0    # "start":J
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public isAudioRecordPlaying()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->simpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isAudioRecording()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordDone()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->recordDone:Z

    return v0
.end method

.method public onClickAudioRecord()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onShowAudioRecordView()V

    .line 161
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->g()V

    .line 280
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->simpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onDestroy()V

    .line 281
    return-void
.end method

.method public playAudioRecord()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/recorder/audio/c;->d()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onAudioRecordPlayStart()V

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->simpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 213
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public replyWithContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "textContent"    # Ljava/lang/String;
    .param p4, "localImagePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 234
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "tWhom"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Poster"

    :goto_0
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "Author"

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    const-string v0, "wImage"

    const-string v1, "true"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reply"

    invoke-static {v0, v1, v6}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 242
    new-instance v7, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v8, 0x3

    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, p4, v0}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 276
    :goto_1
    return-void

    .line 235
    :cond_0
    const-string v0, "Others"

    goto :goto_0

    .line 271
    :cond_1
    const-string v0, "wImage"

    const-string v1, "false"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reply"

    invoke-static {v0, v1, v6}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    .line 274
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->uploadAudioRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "localImagePath"    # Ljava/lang/String;
    .param p4, "boid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->localPath:Ljava/lang/String;

    .line 303
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Author"

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const-string v0, "wImage"

    const-string v1, "true"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Post"

    invoke-static {v0, v1, v7}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 309
    new-instance v8, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v9, 0x3

    new-instance v0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;-><init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9, p3, v0}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_0
    const-string v0, "wImage"

    const-string v1, "false"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Post"

    invoke-static {v0, v1, v7}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 339
    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->uploadAudioRecordPost(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public startAudioRecord()V
    .locals 2

    .prologue
    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->startRecord()V

    .line 184
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onAudioRecordStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 192
    :cond_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopAudioRecord()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onAudioRecordEnd()V

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopRecord()V

    .line 201
    return-void
.end method

.method public stopPlayAudioRecord()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->mForumReplyView:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onAudioRecordPlayStop()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->simpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 220
    return-void
.end method

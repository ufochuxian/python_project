.class public Lcom/jiliguala/niuwa/common/util/xutils/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lrx/i/b;

.field private d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

.field private e:Lcom/jiliguala/niuwa/a/b/e;

.field private f:Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrx/i/b;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "courseID"    # Ljava/lang/String;
    .param p3, "subCourseID"    # Ljava/lang/String;
    .param p4, "subscriptions"    # Lrx/i/b;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->b:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->b(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->c(Ljava/lang/String;)V

    .line 44
    iput-object p4, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->c:Lrx/i/b;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/util/k;)Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->f:Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "widgetId"    # Ljava/lang/String;
    .param p2, "score"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$InteractionModel;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$InteractionModel;-><init>()V

    .line 143
    .local v0, "interactionModel":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$InteractionModel;
    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$InteractionModel;->_id:Ljava/lang/String;

    .line 144
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$InteractionModel;->score:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->interaction:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "score"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;-><init>()V

    .line 134
    .local v0, "speakModel":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;
    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;->_id:Ljava/lang/String;

    .line 135
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;->url:Ljava/lang/String;

    .line 136
    iput-object p3, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;->score:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method private b(Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;)Lokhttp3/ab;
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 107
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;)V
    .locals 0
    .param p1, "reportCallBack"    # Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->f:Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;

    .line 151
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;)V
    .locals 0
    .param p1, "courseProgressTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "bid"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "score"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "drag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    const-string v0, "speak"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-direct {p0, p2, p3, p4}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->hasCourseIDAndSubID()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->c:Lrx/i/b;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->c:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->b(Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 67
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 68
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 69
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/common/util/xutils/util/k$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k$1;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/util/k;)V

    .line 70
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "courseId"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public c()Lcom/jiliguala/niuwa/a/b/e;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->e:Lcom/jiliguala/niuwa/a/b/e;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/jiliguala/niuwa/a/b/e;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/a/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->e:Lcom/jiliguala/niuwa/a/b/e;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->e:Lcom/jiliguala/niuwa/a/b/e;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1, "subTaskID"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->d:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 120
    return-void
.end method

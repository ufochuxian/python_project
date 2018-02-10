.class Lcom/jiliguala/niuwa/logic/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/l/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/jiliguala/niuwa/logic/l/d/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/l/c$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/l/c$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/l/c;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/jiliguala/niuwa/logic/l/c$a;->a:Lcom/jiliguala/niuwa/logic/l/c;

    return-object v0
.end method

.method private b()Lcom/jiliguala/niuwa/logic/l/d/b;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/d/g;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/d/g;-><init>()V

    return-object v0
.end method

.method private c()Lcom/jiliguala/niuwa/logic/l/d/b;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/d/h;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/d/h;-><init>()V

    return-object v0
.end method

.method private d()Lcom/jiliguala/niuwa/logic/l/d/b;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/d/d;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/d/d;-><init>()V

    return-object v0
.end method

.method private e()Lcom/jiliguala/niuwa/logic/l/d/b;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/d/e;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/d/e;-><init>()V

    return-object v0
.end method

.method private f()Lcom/jiliguala/niuwa/logic/l/d/b;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/d/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/d/f;-><init>()V

    return-object v0
.end method

.method private g()Lcom/jiliguala/niuwa/logic/l/d/b;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/d/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/d/c;-><init>()V

    return-object v0
.end method

.method private h()Lcom/jiliguala/niuwa/logic/l/d/b;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/d/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/d/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mPlatform"    # I
    .param p2, "mTitle"    # Ljava/lang/String;
    .param p3, "mAbst"    # Ljava/lang/String;
    .param p4, "mThmbUrl"    # Ljava/lang/String;
    .param p5, "mPid"    # Ljava/lang/String;
    .param p6, "mType"    # I
    .param p7, "cat"    # Ljava/lang/String;
    .param p8, "age"    # Ljava/lang/String;
    .param p9, "shareThmbUrl"    # Ljava/lang/String;
    .param p10, "shareUrl"    # Ljava/lang/String;
    .param p11, "shareSource"    # Ljava/lang/String;
    .param p12, "unitId"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;-><init>()V

    .line 46
    .local v0, "model":Lcom/jiliguala/niuwa/logic/l/a/a;
    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/logic/l/a/a;->g(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/logic/l/a/a;->h(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/jiliguala/niuwa/logic/l/a/a;->i(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/jiliguala/niuwa/logic/l/a/a;->j(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/jiliguala/niuwa/logic/l/a/a;->c(I)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/l/a/a;->b(I)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p8}, Lcom/jiliguala/niuwa/logic/l/a/a;->f(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/jiliguala/niuwa/logic/l/a/a;->e(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    .line 47
    invoke-virtual {v1, p9}, Lcom/jiliguala/niuwa/logic/l/a/a;->d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p10}, Lcom/jiliguala/niuwa/logic/l/a/a;->c(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p11}, Lcom/jiliguala/niuwa/logic/l/a/a;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p12}, Lcom/jiliguala/niuwa/logic/l/a/a;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/l/d/b;->a(Lcom/jiliguala/niuwa/logic/l/a/a;)V

    .line 74
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/d/b;->a()V

    .line 76
    :cond_0
    return-void

    .line 51
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->b()Lcom/jiliguala/niuwa/logic/l/d/b;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    goto :goto_0

    .line 55
    :sswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->c()Lcom/jiliguala/niuwa/logic/l/d/b;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    goto :goto_0

    .line 58
    :sswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->e()Lcom/jiliguala/niuwa/logic/l/d/b;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    goto :goto_0

    .line 61
    :sswitch_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->d()Lcom/jiliguala/niuwa/logic/l/d/b;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    goto :goto_0

    .line 64
    :sswitch_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->f()Lcom/jiliguala/niuwa/logic/l/d/b;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    goto :goto_0

    .line 67
    :sswitch_5
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->g()Lcom/jiliguala/niuwa/logic/l/d/b;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x7f0903b1 -> :sswitch_5
        0x7f0904dd -> :sswitch_1
        0x7f0904de -> :sswitch_3
        0x7f0904df -> :sswitch_2
        0x7f0904e0 -> :sswitch_1
        0x7f0904e2 -> :sswitch_0
        0x7f0904e3 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/l/d/b;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 114
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mAbst"    # Ljava/lang/String;
    .param p3, "mThmbUrl"    # Ljava/lang/String;
    .param p4, "mPid"    # Ljava/lang/String;
    .param p5, "mType"    # I
    .param p6, "viralType"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/a/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/a/a;-><init>()V

    .line 32
    .local v0, "model":Lcom/jiliguala/niuwa/logic/l/a/a;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/l/a/a;->g(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jiliguala/niuwa/logic/l/a/a;->h(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/logic/l/a/a;->i(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/jiliguala/niuwa/logic/l/a/a;->j(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/jiliguala/niuwa/logic/l/a/a;->c(I)Lcom/jiliguala/niuwa/logic/l/a/a;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/jiliguala/niuwa/logic/l/a/a;->a(I)Lcom/jiliguala/niuwa/logic/l/a/a;

    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/c;->h()Lcom/jiliguala/niuwa/logic/l/d/b;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    .line 36
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/l/d/b;->a(Lcom/jiliguala/niuwa/logic/l/a/a;)V

    .line 38
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c;->a:Lcom/jiliguala/niuwa/logic/l/d/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/d/b;->a()V

    .line 40
    :cond_0
    return-void
.end method

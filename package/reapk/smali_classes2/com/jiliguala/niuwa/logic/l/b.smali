.class public Lcom/jiliguala/niuwa/logic/l/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/l/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/database/ContentObserver;

.field private e:Lcom/jiliguala/niuwa/logic/l/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/logic/l/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/l/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/l/b;->b:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b;->c:Landroid/content/ContentResolver;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/l/b;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/b;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b;->c:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private a(JJ)Z
    .locals 5
    .param p1, "currentTime"    # J
    .param p3, "dateAdded"    # J

    .prologue
    .line 81
    sub-long v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/l/b;JJ)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/b;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/logic/l/b;->a(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/l/b;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/b;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/l/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u622a\u5c4f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u622a\u56fe"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/l/b;)Lcom/jiliguala/niuwa/logic/l/b$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/l/b;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b;->e:Lcom/jiliguala/niuwa/logic/l/b$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/b$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/logic/l/b$1;-><init>(Lcom/jiliguala/niuwa/logic/l/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b;->d:Landroid/database/ContentObserver;

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b;->c:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/l/b$a;)V
    .locals 0
    .param p1, "mOnScreenShotListener"    # Lcom/jiliguala/niuwa/logic/l/b$a;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/l/b;->e:Lcom/jiliguala/niuwa/logic/l/b$a;

    .line 97
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b;->d:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/b;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    :cond_0
    return-void
.end method

.class public Lcom/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/a/a/d;


# instance fields
.field private volatile b:Z

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0}, Lcom/a/a/d;-><init>()V

    sput-object v0, Lcom/a/a/d;->a:Lcom/a/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d;->b:Z

    .line 12
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/d;->c:I

    .line 14
    return-void
.end method

.method public static a()Lcom/a/a/d;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/a/a/d;->a:Lcom/a/a/d;

    return-object v0
.end method


# virtual methods
.method a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 38
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 98
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)Lcom/a/a/d;
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/a/a/d;->c:I

    .line 27
    sget-object v0, Lcom/a/a/d;->a:Lcom/a/a/d;

    return-object v0
.end method

.method a(Z)Lcom/a/a/d;
    .locals 1
    .param p1, "enableLogging"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/a/a/d;->b:Z

    .line 22
    sget-object v0, Lcom/a/a/d;->a:Lcom/a/a/d;

    return-object v0
.end method

.method a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 50
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 117
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 66
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 86
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 92
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 104
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 111
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/a/a/d;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/d;->c:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 123
    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

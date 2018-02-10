.class public Lcom/jiliguala/niuwa/common/util/xutils/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a:Ljava/lang/String;

    .line 32
    sput-boolean v1, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b:Z

    .line 33
    sput-boolean v1, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->c:Z

    .line 34
    sput-boolean v1, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->d:Z

    .line 35
    sput-boolean v1, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->e:Z

    .line 36
    sput-boolean v1, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->f:Z

    .line 37
    sput-boolean v1, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->g:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 5
    .param p0, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 44
    const-string v1, "%s.%s(L:%d)"

    .line 45
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "callerClazzName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    :goto_0
    return-object v1

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b:Z

    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 56
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b:Z

    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 69
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 72
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 183
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->f:Z

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 186
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 189
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->c:Z

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 82
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 85
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->c:Z

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 95
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 222
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->g:Z

    if-nez v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 225
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 228
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->d:Z

    if-nez v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 108
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->d:Z

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 121
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 124
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->e:Z

    if-nez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 134
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 137
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->e:Z

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 147
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 150
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->f:Z

    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 160
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 163
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->f:Z

    if-nez v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 173
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 176
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->g:Z

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 199
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 202
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    sget-boolean v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->g:Z

    if-nez v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/j;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 212
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    if-eqz v2, :cond_0

    .line 215
    sget-object v2, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->h:Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;

    invoke-interface {v2, v1, p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/util/n$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

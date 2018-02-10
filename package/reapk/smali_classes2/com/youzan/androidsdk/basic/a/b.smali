.class public final Lcom/youzan/androidsdk/basic/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youzan/androidsdk/basic/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/youzan/androidsdk/basic/a/b;->a:Ljava/util/TimeZone;

    .line 37
    new-instance v0, Lcom/youzan/androidsdk/basic/a/b$1;

    invoke-direct {v0}, Lcom/youzan/androidsdk/basic/a/b$1;-><init>()V

    sput-object v0, Lcom/youzan/androidsdk/basic/a/b;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lcom/youzan/androidsdk/basic/a/b$a;)V
    .locals 2
    .param p1, "builder"    # Lcom/youzan/androidsdk/basic/a/b$a;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-object v0, p1, Lcom/youzan/androidsdk/basic/a/b$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/a/b;->c:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/youzan/androidsdk/basic/a/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/a/b;->d:Ljava/lang/String;

    .line 61
    iget-wide v0, p1, Lcom/youzan/androidsdk/basic/a/b$a;->c:J

    iput-wide v0, p0, Lcom/youzan/androidsdk/basic/a/b;->e:J

    .line 62
    iget-object v0, p1, Lcom/youzan/androidsdk/basic/a/b$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/a/b;->f:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/youzan/androidsdk/basic/a/b$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/a/b;->g:Ljava/lang/String;

    .line 64
    iget-boolean v0, p1, Lcom/youzan/androidsdk/basic/a/b$a;->f:Z

    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b;->h:Z

    .line 65
    iget-boolean v0, p1, Lcom/youzan/androidsdk/basic/a/b$a;->g:Z

    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b;->i:Z

    .line 66
    iget-boolean v0, p1, Lcom/youzan/androidsdk/basic/a/b$a;->h:Z

    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b;->j:Z

    .line 67
    iget-boolean v0, p1, Lcom/youzan/androidsdk/basic/a/b$a;->i:Z

    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b;->k:Z

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/youzan/androidsdk/basic/a/b$a;Lcom/youzan/androidsdk/basic/a/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youzan/androidsdk/basic/a/b$a;
    .param p2, "x1"    # Lcom/youzan/androidsdk/basic/a/b$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/a/b;-><init>(Lcom/youzan/androidsdk/basic/a/b$a;)V

    return-void
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/util/Date;

    .prologue
    .line 74
    sget-object v0, Lcom/youzan/androidsdk/basic/a/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/youzan/androidsdk/basic/a/b;->a:Ljava/util/TimeZone;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b;->j:Z

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/youzan/androidsdk/basic/a/b;->e:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b;->k:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/a/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/a/b;->h:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/youzan/androidsdk/basic/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/youzan/androidsdk/basic/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-boolean v1, p0, Lcom/youzan/androidsdk/basic/a/b;->j:Z

    if-eqz v1, :cond_0

    .line 165
    iget-wide v2, p0, Lcom/youzan/androidsdk/basic/a/b;->e:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 166
    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/youzan/androidsdk/basic/a/b;->k:Z

    if-nez v1, :cond_1

    .line 173
    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youzan/androidsdk/basic/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youzan/androidsdk/basic/a/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-boolean v1, p0, Lcom/youzan/androidsdk/basic/a/b;->h:Z

    if-eqz v1, :cond_2

    .line 179
    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    iget-boolean v1, p0, Lcom/youzan/androidsdk/basic/a/b;->i:Z

    if-eqz v1, :cond_3

    .line 183
    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 168
    :cond_4
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/youzan/androidsdk/basic/a/b;->e:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/youzan/androidsdk/basic/a/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

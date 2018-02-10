.class public Lcom/umeng/analytics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Z

.field public static f:Z

.field public static g:J

.field public static final h:Z

.field public static i:Z

.field public static j:I

.field static k:[D

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 18
    sput-object v2, Lcom/umeng/analytics/a;->l:Ljava/lang/String;

    .line 19
    sput-object v2, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    .line 20
    sput-object v2, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    .line 22
    sput-object v2, Lcom/umeng/analytics/a;->a:Ljava/lang/String;

    .line 23
    sput-object v2, Lcom/umeng/analytics/a;->b:Ljava/lang/String;

    .line 25
    sput v3, Lcom/umeng/analytics/a;->o:I

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/a;->c:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/a;->d:Ljava/lang/String;

    .line 29
    sput-boolean v1, Lcom/umeng/analytics/a;->e:Z

    .line 30
    sput-boolean v1, Lcom/umeng/analytics/a;->f:Z

    .line 31
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/umeng/analytics/a;->g:J

    .line 35
    sput-boolean v3, Lcom/umeng/analytics/a;->i:Z

    .line 43
    sput-object v2, Lcom/umeng/analytics/a;->k:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/umeng/analytics/a;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0}, Lu/aly/av;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a;->l:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/umeng/analytics/a;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lu/aly/bd;->a(Landroid/content/Context;)Lu/aly/bd;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a;->l:Ljava/lang/String;

    .line 88
    :cond_0
    sget-object v0, Lcom/umeng/analytics/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 129
    sput p1, Lcom/umeng/analytics/a;->o:I

    .line 130
    invoke-static {p0}, Lu/aly/bd;->a(Landroid/content/Context;)Lu/aly/bd;

    move-result-object v0

    sget v1, Lcom/umeng/analytics/a;->o:I

    invoke-virtual {v0, v1}, Lu/aly/bd;->a(I)V

    .line 131
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    if-nez p0, :cond_1

    .line 51
    sput-object p1, Lcom/umeng/analytics/a;->l:Ljava/lang/String;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {p0}, Lu/aly/av;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    sput-object v0, Lcom/umeng/analytics/a;->l:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "Appkey\u548cAndroidManifest.xml\u4e2d\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    invoke-static {v0}, Lu/aly/ay;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {p0}, Lu/aly/bd;->a(Landroid/content/Context;)Lu/aly/bd;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    const-string v0, "Appkey\u548c\u4e0a\u6b21\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    invoke-static {v0}, Lu/aly/ay;->d(Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lu/aly/bd;->a(Landroid/content/Context;)Lu/aly/bd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/bd;->a(Ljava/lang/String;)V

    .line 72
    :cond_3
    :goto_1
    sput-object p1, Lcom/umeng/analytics/a;->l:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_4
    invoke-static {p0}, Lu/aly/bd;->a(Landroid/content/Context;)Lu/aly/bd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/bd;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    sput-object p0, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static a(Z)V
    .locals 0

    .prologue
    .line 46
    sput-boolean p0, Lcom/umeng/analytics/a;->i:Z

    .line 47
    return-void
.end method

.method public static a()[D
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/umeng/analytics/a;->k:[D

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0}, Lu/aly/av;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    .line 95
    :cond_0
    sget-object v0, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    sput-object p1, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    .line 112
    invoke-static {p0}, Lu/aly/bd;->a(Landroid/content/Context;)Lu/aly/bd;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/bd;->c(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0}, Lu/aly/bd;->a(Landroid/content/Context;)Lu/aly/bd;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/bd;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    .line 125
    :cond_0
    sget-object v0, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/umeng/analytics/a;->o:I

    if-nez v0, :cond_0

    .line 135
    invoke-static {p0}, Lu/aly/bd;->a(Landroid/content/Context;)Lu/aly/bd;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/bd;->f()I

    move-result v0

    sput v0, Lcom/umeng/analytics/a;->o:I

    .line 137
    :cond_0
    sget v0, Lcom/umeng/analytics/a;->o:I

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "6.0.9"

    return-object v0
.end method

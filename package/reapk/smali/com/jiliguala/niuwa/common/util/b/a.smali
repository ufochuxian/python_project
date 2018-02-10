.class public Lcom/jiliguala/niuwa/common/util/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/b/a$b;,
        Lcom/jiliguala/niuwa/common/util/b/a$e;,
        Lcom/jiliguala/niuwa/common/util/b/a$a;,
        Lcom/jiliguala/niuwa/common/util/b/a$f;,
        Lcom/jiliguala/niuwa/common/util/b/a$d;,
        Lcom/jiliguala/niuwa/common/util/b/a$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "python"

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 16
    sput-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->b:Z

    .line 17
    sput-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    .line 18
    sput-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->d:Z

    .line 19
    sput-boolean v2, Lcom/jiliguala/niuwa/common/util/b/a;->e:Z

    .line 20
    sput-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->f:Z

    .line 21
    sput-boolean v2, Lcom/jiliguala/niuwa/common/util/b/a;->g:Z

    .line 24
    const-string v0, "release"

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sput-boolean v2, Lcom/jiliguala/niuwa/common/util/b/a;->b:Z

    .line 26
    sput-boolean v2, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    .line 27
    sput-boolean v2, Lcom/jiliguala/niuwa/common/util/b/a;->d:Z

    .line 28
    sput-boolean v2, Lcom/jiliguala/niuwa/common/util/b/a;->e:Z

    .line 29
    sput-boolean v2, Lcom/jiliguala/niuwa/common/util/b/a;->f:Z

    .line 31
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

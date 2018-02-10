.class public Lcom/alibaba/mtl/log/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/a/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/mtl/log/a/b;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alibaba/mtl/log/a/b;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/a/b;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/a/b;->a:Lcom/alibaba/mtl/log/a/b;

    .line 17
    const-string v0, "http://adashx.m.taobao.com/rest/gc2"

    sput-object v0, Lcom/alibaba/mtl/log/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a()Lcom/alibaba/mtl/log/a/b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/mtl/log/a/b;->a:Lcom/alibaba/mtl/log/a/b;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/alibaba/mtl/log/a/b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    new-instance v1, Lcom/alibaba/mtl/log/a/b$a;

    invoke-direct {v1, p0}, Lcom/alibaba/mtl/log/a/b$a;-><init>(Lcom/alibaba/mtl/log/a/b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/e/r;->a(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method

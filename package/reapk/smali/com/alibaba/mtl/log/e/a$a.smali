.class public Lcom/alibaba/mtl/log/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static c:Lcom/alibaba/mtl/log/e/a$a;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/alibaba/mtl/log/e/a$a;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/e/a$a;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/e/a$a;->c:Lcom/alibaba/mtl/log/e/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/log/e/a$a;->a:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/log/e/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 44
    const-string v0, "E0102"

    iget-object v1, p0, Lcom/alibaba/mtl/log/e/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 58
    const-string v0, "E0111"

    iget-object v1, p0, Lcom/alibaba/mtl/log/e/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "E0112"

    iget-object v1, p0, Lcom/alibaba/mtl/log/e/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

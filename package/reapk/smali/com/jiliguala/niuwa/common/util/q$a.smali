.class Lcom/jiliguala/niuwa/common/util/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/jiliguala/niuwa/common/util/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/jiliguala/niuwa/common/util/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/util/q;-><init>(Lcom/jiliguala/niuwa/common/util/q$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/q$a;->a:Lcom/jiliguala/niuwa/common/util/q;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/xiaomi/b/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/xiaomi/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/b/e;

    invoke-direct {v0}, Lcom/xiaomi/b/e;-><init>()V

    sput-object v0, Lcom/xiaomi/b/e$a;->a:Lcom/xiaomi/b/e;

    return-void
.end method

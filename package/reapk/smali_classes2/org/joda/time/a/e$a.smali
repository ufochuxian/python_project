.class Lorg/joda/time/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final b:Lorg/joda/time/a/c;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lorg/joda/time/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/joda/time/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lorg/joda/time/a/e$a;->a:Ljava/lang/Class;

    .line 324
    iput-object p2, p0, Lorg/joda/time/a/e$a;->b:Lorg/joda/time/a/c;

    .line 325
    return-void
.end method

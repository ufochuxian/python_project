.class public final Lcom/jakewharton/rxbinding/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/jakewharton/rxbinding/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxbinding/a/a$a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/jakewharton/rxbinding/a/a$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jakewharton/rxbinding/a/a$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/jakewharton/rxbinding/a/a;->c:Lcom/jakewharton/rxbinding/a/a$a;

    .line 8
    sget-object v0, Lcom/jakewharton/rxbinding/a/a;->c:Lcom/jakewharton/rxbinding/a/a$a;

    sput-object v0, Lcom/jakewharton/rxbinding/a/a;->a:Lrx/c/o;

    .line 9
    sget-object v0, Lcom/jakewharton/rxbinding/a/a;->c:Lcom/jakewharton/rxbinding/a/a$a;

    sput-object v0, Lcom/jakewharton/rxbinding/a/a;->b:Lrx/c/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

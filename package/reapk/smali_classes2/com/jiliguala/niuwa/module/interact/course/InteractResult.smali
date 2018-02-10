.class public Lcom/jiliguala/niuwa/module/interact/course/InteractResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final TIME_OUT:Ljava/lang/String; = "timeout"

.field private static final serialVersionUID:J = -0x70934055ac6d228L


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractResult;->name:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractResult;->name:Ljava/lang/String;

    return-object v0
.end method

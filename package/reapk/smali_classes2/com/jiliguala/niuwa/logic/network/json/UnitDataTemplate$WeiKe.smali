.class public Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeiKe"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10658eac79dccc65L


# instance fields
.field public icon:Ljava/lang/String;

.field public packages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;

.field public ttl:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnAvailable()Z
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    const-string v1, "unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

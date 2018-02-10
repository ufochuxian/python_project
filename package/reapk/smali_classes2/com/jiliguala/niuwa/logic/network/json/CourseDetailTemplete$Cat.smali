.class public Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cat"
.end annotation


# instance fields
.field public age:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/Age;",
            ">;"
        }
    .end annotation
.end field

.field public bicon:Ljava/lang/String;

.field public cat:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public sel:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class final Ltv/alphonso/service/PrimeTime$1;
.super Ljava/lang/Object;
.source "PrimeTime.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/service/PrimeTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ltv/alphonso/service/PrimeTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Ltv/alphonso/service/PrimeTime$1;->createFromParcel(Landroid/os/Parcel;)Ltv/alphonso/service/PrimeTime;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/alphonso/service/PrimeTime;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    new-instance v0, Ltv/alphonso/service/PrimeTime;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ltv/alphonso/service/PrimeTime;-><init>(Landroid/os/Parcel;Ltv/alphonso/service/PrimeTime$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Ltv/alphonso/service/PrimeTime$1;->newArray(I)[Ltv/alphonso/service/PrimeTime;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/alphonso/service/PrimeTime;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Ltv/alphonso/service/PrimeTime;

    return-object v0
.end method

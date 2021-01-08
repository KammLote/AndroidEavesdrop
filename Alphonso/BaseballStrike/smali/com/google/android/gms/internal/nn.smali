.class public final Lcom/google/android/gms/internal/nn;
.super Lcom/google/android/gms/internal/nt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/nt",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/np;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/nt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/np;)V

    return-void
.end method


# virtual methods
.method protected final zzFC()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/nq;->zzcac:I

    return v0
.end method

.method public final zzFD()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/np;)Lcom/google/android/gms/internal/nt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/internal/nt",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nn;->getKey()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nn;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nn;->zzFF()Lcom/google/android/gms/internal/np;

    move-result-object p3

    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nn;->zzFG()Lcom/google/android/gms/internal/np;

    move-result-object p4

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/nn;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/nn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/np;)V

    return-object v0
.end method

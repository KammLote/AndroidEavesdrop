.class final Lcom/google/android/gms/internal/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbKK:Ljava/lang/String;

.field private synthetic zzbKL:Lcom/google/android/gms/internal/cb;

.field private synthetic zzbKM:Lcom/google/android/gms/internal/cn;

.field private synthetic zzbKN:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cq;->zzbKM:Lcom/google/android/gms/internal/cn;

    iput-object p2, p0, Lcom/google/android/gms/internal/cq;->zzbKK:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cq;->zzbKN:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/cq;->zzbKL:Lcom/google/android/gms/internal/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->zzbKM:Lcom/google/android/gms/internal/cn;

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->zzbKK:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cq;->zzbKN:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/cq;->zzbKL:Lcom/google/android/gms/internal/cb;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cn;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cb;)V

    return-void
.end method
